<?php

namespace App\Http\Controllers;

use App\Product;
//use Illuminate\Http\Request;
use App\Http\Requests\ProductRequest as Request;

class ProductsController extends Controller
{
    /**
     * list data
     * @return \Illuminate\Database\Eloquent\Collection|static[]
     */
    public function index(){

        /**
         * exemplo de utilização de cache
         * configurado para 10 minutos
         *
         */
        $minutes = \Carbon\Carbon::now()->addMinutes(1);
        $products = \Cache::remember('api::products', $minutes, function () {
            return Product::all();
        });

        return $products;
         //*/

        //return Product::all();
    }

    /**
     * insert data
     * @param Request $request
     * @return mixed
     */
    public function store(Request $request)
    {
        \Cache::forget('api::products');
        $data = $request->all();
        $data['user_id'] = \Auth::user()->id;
        return Product::create($data);
    }

    /**
     * update data
     * @param Request $request
     * @param Product $product
     * @return Product
     */
    public function update(Request $request, Product $product)
    {
        $product->update($request->all());
        return $product;
    }

    /**
     * show data
     * @param Product $product
     * @return Product
     */
    public function show(Product $product)
    {
        return $product;
    }

    /**
     * delete data
     * @param Request $request
     * @param Product $product
     * @return Product
     */
    public function destroy(Request $request, Product $product)
    {
        $this->authorize('delete', $product);
        $product->delete();
        return $product;
    }
}
