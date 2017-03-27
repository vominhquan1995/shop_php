<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

//use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Hoadon;
use App\Danhgia;
use App\Http\Requests\ProductRequest;
use Input,File;
//use Request;
use Illuminate\Http\Request;
use DB,Auth;
class ReportController extends Controller {
	
	public function getOrder(){
		return view('backend.report.order');
	}

    public function postOrder(Request $request){
		if($request->ajax()){
                $fromDate = strtotime($request->fromDate);
                $toDate = strtotime($request->toDate);

                $from = date('Y-m-d',$fromDate); 
                $to = date('Y-m-d', $toDate);
                $data = Hoadon::select(DB::raw('YEAR(created_at) as Year,MONTH(created_at) as Month,DAY(created_at) as Day,count(*) as Quantity'))
				->where('status',1)
                ->whereBetween('created_at', array($from, $to))              
                ->groupBy(DB::raw('CAST(created_at AS DATE)'))
                ->get();
                return $data;
            }
            return "HTTP";
	}

	public function postAdd(ProductRequest $request_product){
		$product = new Product;
		$file_name = $request_product->file('fileimages')->getClientOriginalName();
		$product->name = $request_product->txtten;
		$product->alias = str_slug($request_product->txtten);
		$product->price = $request_product->txtgia;
		$product->pricesale = $request_product->txtgiasale;
		$product->intro = $request_product->txtndhienthi;
		$product->content = $request_product->txtndchitiet;
		$product->image = $file_name;
		$product->keywork = $request_product->txtkeyword;
		$product->discription = $request_product->txtmota;
		$product->user_id = Auth::user()->id;
		$product->cate_id = $request_product->parentid;
		$request_product->file('fileimages')->move('public/upload/',$file_name);
		$product->save();
		$product_id = $product->id;
		if(Input::hasFile('fileimageschitiet')){
			foreach (Input::file('fileimageschitiet') as $file) {
				$product_img = new ProductImage();
				if(isset($file)){
					$product_img->image = $file->getClientOriginalName();
					$product_img->product_id = $product_id;
					$file->move('public/upload/images_detail/',$file->getClientOriginalName());
					$product_img->save();
				}
			}
		}
		return redirect()->route('admin.product.getList')->with(['flash_level' => 'success','flash_message' =>'Thêm sản phẩm thành công']);
	}
	
}
