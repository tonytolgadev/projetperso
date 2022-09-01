<?php

use App\Http\Controllers\ClientController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\PdfController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/admin', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('admin.dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Route::get('/', [ClientController::class, 'home']);
Route::get('/shop', [ClientController::class, 'shop']);
Route::get('/panier', [ClientController::class, 'panier']);
Route::get('/paiement', [ClientController::class, 'paiement']);
Route::get('/commande', [ClientController::class, 'commande']);
Route::get('/login1', [ClientController::class, 'login']);
Route::get('/signup', [ClientController::class, 'signup']);
Route::get('/apropos', [ClientController::class, 'apropos']);


Route::get('/ajouteraupanier/{id}', [ClientController::class, 'ajouteraupanier']);
Route::post('/modifier_quant/{id}', [ClientController::class, 'modifier_quant']);
Route::get('/suppdupanier/{id}', [ClientController::class, 'suppdupanier']);
Route::post('/creer_compte', [ClientController::class, 'creer_compte']);
Route::post('/acceder_compte', [ClientController::class, 'acceder_compte']);
Route::get('/logout', [ClientController::class, 'logout']);
Route::post('/payer', [ClientController::class, 'payer']);
Route::get('/paiement-success', [ClientController::class, 'paiement_success']);


Route::get('/contact-us', [ContactController::class, 'contact']);
Route::post('/send-message', [ContactController::class, 'sendEmail'])->name('contact.send');

Route::get('/select_par_cat/{category_name}', [ProductController::class, 'select_par_cat']);

// Route::get('/admin', [AdminController::class, 'dashboard']);

Route::group(['middleware' => 'auth'], function(){

Route::get('/orders', [ClientController::class, 'orders']);

Route::get('/addcategory', [CategoryController::class, 'addcategory']);
Route::get('/categories', [CategoryController::class, 'categories']);
Route::post('/savecategory', [CategoryController::class, 'savecategory']);
Route::get('/edit_category/{id}', [CategoryController::class, 'edit_category']);
Route::post('/updatecategory', [CategoryController::class, 'updatecategory']);
Route::get('/delete_category/{id}', [CategoryController::class, 'delete_category']);

Route::get('/addslider', [SliderController::class, 'addslider']);
Route::post('/saveslider', [SliderController::class, 'saveslider']);
Route::get('/sliders', [SliderController::class, 'sliders']);
Route::get('/edit_slider/{id}', [SliderController::class, 'edit_slider']);
Route::post('/updateslider', [SliderController::class, 'updateslider']);
Route::get('/delete_slider/{id}', [SliderController::class, 'delete_slider']);
Route::get('/desactiver_slider/{id}',[SliderController::class, 'desactiver_slider']);
Route::get('/activer_slider/{id}',[SliderController::class, 'activer_slider']);

Route::get('/addproduct', [ProductController::class, 'addproduct'])->middleware(['auth'])->name('dashboard');
Route::post('/saveproduct', [ProductController::class, 'saveproduct']);
Route::get('/products', [ProductController::class, 'products']);
Route::get('/edit_product/{id}', [ProductController::class, 'edit_product']);
Route::post('/updateproduct', [ProductController::class, 'updateproduct']);
Route::get('/delete_product/{id}', [ProductController::class, 'delete_product']);
Route::get('/activer_product/{id}', [ProductController::class, 'activer_product']);
Route::get('/desactiver_product/{id}', [ProductController::class, 'desactiver_product']);

Route::get('/voircommandepdf/{id}', [PdfController::class, 'view_pdf']);

Route::get('/delete_orders/{id}', [OrderController::class, 'delete_orders']);

});














