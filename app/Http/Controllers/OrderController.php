<?php

namespace App\Http\Controllers;
use App\Models\Order;

use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function delete_orders($id){
        $order = Order::find($id);

        $order->delete();

        return back()->with('status', 'La catégorie a été supprimé avec succès !');

    }
}
