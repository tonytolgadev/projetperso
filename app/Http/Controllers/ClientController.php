<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Product;
use App\Models\Category;
use App\Models\Client;
use App\Models\Order;
use Session;
use App\Cart;
use Stripe\Charge;
use Stripe\Stripe;
use Illuminate\Contracts\Session\Session as SessionSession;

class ClientController extends Controller
{
    public function home(){
        $sliders = Slider::All()->where('status', 1);

        $products = Product::All()->where('status', 1);

        return view('client.home')->with('sliders', $sliders)->with('products', $products);
    }

    public function shop(){

        $products = Product::All()->where('status', 1);

        $categories = Category::All();

        return view('client.shop')->with('products', $products)->with('categories', $categories);

    }

    public function apropos(){



        return view('client.apropos');

    }

    public function ajouteraupanier($id)
    {
        $product = Product::find($id);

        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($product, $id);
        Session::put('cart', $cart);

        // dd(Session::get('cart'));
        return back();
    }

    public function modifier_quant(Request $request, $id){
        $oldCart = Session::has('cart')? Session::get('cart'):null;
        $cart = new Cart($oldCart);

        $cart->updateQty($id, $request->quantity);
        Session::put('cart', $cart);

        //dd(Session::get('cart'));
        return back();
    }

    public function suppdupanier($id){

        $oldCart = Session::has('cart')? Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);

        if(count($cart->items) > 0){
            Session::put('cart', $cart);
        }
        else{
            Session::forget('cart');
        }

        //dd(Session::get('cart'));
        return back();
    }

    public function panier(){
        if(!Session::has('cart')){
            return view('client.panier');
        }

        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);

        return view('client.panier', ['products' => $cart->items ]);
    }

    public function paiement(){
        if(!Session::has('client')){
        return view('client.login');
        }

        if(!Session::has('cart')){
            return view('client.panier');
            }

        return view('client.paiement');
    }

    public function payer(Request $request){

        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);

        Stripe::setApiKey('sk_test_51L0R5AHm61DgBwVqfKE3MbL7XOg2alO0HYMY3lb4BjVoH0R0KY25XnVq9eTwKmbkLVa7uSKPa3Y0FyafoTsNZ6JW00DFUiVK2v');

        try{

            $charge = Charge::create(array(
                "amount" => $cart->totalPrice * 100,
                "currency" => "usd",
                "source" => $request->input('stripeToken'), // obtainded with Stripe.js
                "description" => "Test Charge"
            ));



        } catch(\Exception $e){
            Session::put('error', $e->getMessage());
            return redirect::to('/paiement');
        }


        $order = new Order();

        $payer_id = time();

        $order->names = $request->input('name');
        $order->adresse = $request->input('address');
        $order->panier = serialize($cart);
        $order->payer_id = $payer_id;

        $order->save();

        Session::forget('cart');

        // $orders = Order::where('payer_id', $payer_id)->get();

        // $order->transform(function($order, $key){
        //     $order->panier = unserialize($order->panier);

        //     return $order;
        // });

        // $email = Session::get('client')->email;

        // Mail::to($email)->send(new SendMail($orders));



        return redirect('/panier')->with('status', 'Votre commande a été effectué avec succès !');

    }

    public function login(){
        return view('client.login');

    }

    public function logout(){
        Session::forget('client');

        return back();
    }

    public function signup(){
        return view('client.signup');

    }

    public function creer_compte(Request $request){
        $this->validate($request, ['email' => 'required|email|unique:clients',
        'password' => 'required|min:4']);

        $client = new Client();
        $client->email = $request->input('email');
        $client->password = bcrypt($request->input('password'));

        $client->save();

        return back()->with('status', 'Votre compte a été crée avec succès ! ');
    }

    public function acceder_compte(Request $request){
        $this->validate($request, ['email' => 'required', 'password' => 'required']);

        $client = Client::where('email', $request->input('email'))->first();

        if ($client) {
            # code...
            if (Hash::check($request->input('password'), $client->password)) {
                # code...
                Session::put('client', $client);
                return redirect('/shop');
            } else {
                # code...
                return back()->with('status', 'Mauvais mot de passe ou email');
            }

        } else {
            return back()->with('status', 'Pas de compte avec cet email, veuillez créer un compte.');
        }

    }

    public function orders(){
        $orders = Order::All();

        $orders->transform(function($order, $key){
            $order->panier =  unserialize($order->panier);

            return $order;
        });
        return view('admin.orders')->with('orders', $orders);

    }
}
