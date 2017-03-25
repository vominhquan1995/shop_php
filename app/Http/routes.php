<?php
use App\Category;
Route::get('/', ['as' =>'trangchu','uses' => 'PageController@index']);
Route::get('home', 'HomeController@index');
Route::controllers([	
]);
Route::get('/list-cate',function(){
	$id=Input::get('id');
	$listCate=Category::where('prarent_id','=',$id)->get();
	return Response::json($listCate);
});
Route::get('admin',['as' => 'admin','middleware' => 'admin','uses' => 'TrangchuContronller@index']);
Route::group(['prefix' =>'admin','middleware' => 'admin'],function(){
	Route::group(['prefix' => 'category'],function(){
		Route::get('add',['as' => 'admin.category.getAdd','uses' => 'CategoryController@getAdd']);
		Route::post('add',['as' => 'admin.category.postAdd','uses' => 'CategoryController@postAdd']);
		Route::get('list',['as' => 'admin.category.getList','uses' => 'CategoryController@getList']);
		Route::get('editparent/{id}',['as' => 'admin.category.getEditParent','uses' => 'CategoryController@getEditParent']);
		Route::post('editparent/{id}',['as' => 'admin.category.postEditParent','uses' => 'CategoryController@postEditParent']);
		Route::get('delete/{id}',['as' => 'admin.category.getDelete','uses' => 'CategoryController@getDelete']);
		Route::get('edit/{id}',['as' => 'admin.category.getEdit ','uses' => 'CategoryController@getEdit']);
		Route::post('edit/{id}',['as' => 'admin.category.postEdit','uses' => 'CategoryController@postEdit']);
	});
	Route::group(['prefix' => 'product'],function(){
		Route::get('add',['as' => 'admin.product.getAdd','uses' => 'ProductContoller@getAdd']);
		Route::post('add',['as' => 'admin.product.postAdd','uses' => 'ProductContoller@postAdd']);
		Route::get('list',['as' => 'admin.product.getList','uses' => 'ProductContoller@getList']);
		Route::get('delete/{id}',['as' => 'admin.product.getDelete','uses' => 'ProductContoller@getDelete']);
		Route::get('edit/{id}',['as' => 'admin.product.getEdit','uses' => 'ProductContoller@getEdit']);
		Route::post('edit/{id}',['as' => 'admin.product.postEdit','uses' => 'ProductContoller@postEdit']);
		Route::get('delimg/{id}',['as' => 'admin.product.getDelImg','uses' => 'ProductContoller@getDelImg']);
		Route::get('listdanhgia',['as' => 'admin.product.listDanhgia','uses' => 'ProductContoller@getDanhgia']);
	});
	Route::group(['prefix' => 'tintuc'],function(){
		Route::get('add',['as' => 'admin.tintuc.getAdd','uses' => 'TintucController@getAdd']);
		Route::post('add',['as' => 'admin.tintuc.postAdd','uses' => 'TintucController@postAdd']);
		Route::get('list',['as' =>'admin.tintuc.getList','uses' => 'TintucController@getList']);
		Route::get('delete/{id}',['as' =>'admin.tintuc.getDelete','uses' => 'TintucController@delete']);
		Route::get('edit/{id}',['as' =>'admin.tintuc.getEdit','uses' => 'TintucController@getEdit']);
		Route::post('edit/{id}',['as' =>'admin.tintuc.getEdit','uses' => 'TintucController@postEdit']);
	});
	Route::group(['prefix' => 'cart'],function(){
		Route::get('list',['as' => 'admin.cart.getCart','uses' => 'CartController@listcart']);
		Route::get('delete/{id}',['as' => 'admin.cart.getDelete','uses' => 'CartController@delete']);
		Route::get('update/{id}',['as' => 'admin.cart.getCapnhat','uses' => 'CartController@update']);
		Route::post('updatestatus',['as' => 'admin.cart.postupdatestatus','uses' => 'CartController@updatestatus']);
	});
	Route::group(['prefix' => 'user'],function(){
		Route::get('list',['as' => 'admin.user.getList','uses' => 'Auth\AuthController@getList']);
		Route::get('add',['as' => 'admin.cart.getadd','uses' => 'Auth\AuthController@getRegister']);
		Route::post('add',['as' => 'admin.cart.postadd','uses' => 'Auth\AuthController@postRegister']);
	});
	Route::group(['prefix' => 'report'],function(){
		Route::get('order',['as' => 'admin.report.getorder','uses' => 'ReportController@getOrder']);
		Route::post('order',['as' => 'admin.report.getorder','uses' => 'ReportController@postOrder']);
		//Route::get('add',['as' => 'admin.cart.getadd','uses' => 'Auth\AuthController@getRegister']);
		//Route::post('add',['as' => 'admin.cart.postadd','uses' => 'Auth\AuthController@postRegister']);
	});
});
Route::get('dang-xuat',['as' => 'dangxuat','uses' => 'Auth\AuthController@getLogout']);
Route::get('san-pham',['as' => 'sanpham','uses' => 'PageController@category']);
Route::get('dang-ky',['as' => 'dangky','uses' => 'PageController@getDangky']);
Route::post('dang-ky',['as' => 'dangkypost','uses' => 'PageController@postDangky']);
Route::get('dang-nhap',['as' => 'dangnhap','uses' => 'PageController@getDangnhap']);
Route::post('dang-nhap',['as' => 'dangnhap','uses' => 'Auth\AuthController@postLogin']);
Route::get('gio-hang',['as' => 'giohang','uses' => 'PageController@giohang']);
Route::get('addtocart/{id}/{qty}',['as' => 'themvaogio','uses' => 'PageController@addtocart']);
Route::get('huy-gio-hang',['as' => 'huygiohang','uses' => 'PageController@huygiohang']);
Route::get('xoa-cart/{id}',['as' => 'xoacart','uses' => 'PageController@xoacart']);
Route::get('update-cart/{id}/{qty}',['as' => 'updatecart','uses' => 'PageController@updatecart']);
Route::get('thanh-toan',['as' => 'thanhtoan','uses' =>'PageController@thanhtoan']);
Route::post('thanh-toan',['as' => 'thanhtoan','uses' =>'PageController@postthanhtoan']);
Route::get('danh-gia',['as' => 'danhgia','uses' =>'PageController@danhgia']);
Route::get('lien-he',['as' => 'lienhe','uses' =>'PageController@lienhe']);
Route::post('lien-he',['as' => 'lienhe','uses' =>'PageController@postlienhe']);

Route::get('auth/login',['as' => 'auth.login','uses' => 'Auth\AuthController@getLogin']);
Route::post('auth/login',['as' => 'auth.login','uses' => 'Auth\AuthController@postLogin']);
Route::get('auth/register',['as' => 'auth.register','middleware' => 'admin','uses' => 'Auth\AuthController@getRegister']);
Route::post('auth/register',['as' => 'auth.register','middleware' => 'admin','uses' => 'Auth\AuthController@postRegister']);
Route::get('{alias}',['as' => 'chitietsanpham','uses' => 'PageController@chitietsanpham']);
Route::get('danh-muc/{alias}',['as' => 'cateparent','uses' => 'PageController@cateparent']);
Route::get('loai-san-pham/{id}',['as' => 'product_category','uses' => 'PageController@product_category']);
Route::any('{all?}','PageController@index')->where('all','(.*)');

/*
  get date
Route::get('qb/get', function(){
	$data DB::table('user') -> get();
	var_dump($data);
});*/