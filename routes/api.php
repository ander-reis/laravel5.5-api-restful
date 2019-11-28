<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:api')->prefix('v1')->group(function (){
    /**
     * chamada de rotas padrão
     */
    /*
    Route::get('/products', 'ProductsController@index');
    Route::post('/products', 'ProductsController@store');
    Route::put('/products/{product}', 'ProductsController@update');
    Route::get('/products/{product}', 'ProductsController@show');
    Route::delete('/products/{product}', 'ProductsController@destroy');
    */

    /**
     * chamada de rota com resource
     */
    //Route::resource('products', 'ProductsController');

    /**
     * retorna dados do user autenticado
     */
    Route::get('/users/me', function(){
        return request()->user();
    });

    /**
     * chamada de rota com resources
     */
    Route::resources([
        'products' => 'ProductsController',
        'users' => 'UsersController',
    ]);
});

Route::get('cors_example', function(){
    return ['status' => 'ok'];
});