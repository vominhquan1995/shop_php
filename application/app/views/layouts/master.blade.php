<!DOCTYPE html>
<html>
<head>
    <?php $settings = Setting::first(); ?>
    @if(isset($page_title))
      <title>{{ stripslashes($page_title) }}</title>
    @else
      <title>{{ $settings->website_name }} - {{ $settings->website_description }}</title>
    @endif

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <link rel="stylesheet" href="{{ URL::to('/') }}/application/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="{{ URL::to('/') }}/application/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="{{ URL::to('/') }}/application/assets/css/reset.css" />
    <link rel="stylesheet" href="{{ URL::to('/') }}/application/assets/css/style.css" />
    <link rel="stylesheet" href="{{ URL::to('/') }}/application/assets/css/style-responsive.css" />
    <link rel="stylesheet" href="{{ URL::to('/') }}/application/assets/css/slider.css" />
    <link rel="icon" href="{{ Config::get('site.uploads_dir') . '/settings/' . $settings->favicon }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ Config::get('site.uploads_dir') . '/settings/' . $settings->favicon }}" type="image/x-icon">
    <script type="text/javascript" src="{{ URL::to('/') }}/application/assets/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="{{ URL::to('/') }}/application/assets/js/bootstrap.min.js"></script>
    <meta property="og:description" content="{{ $settings->website_description }}"/>
</head>
<body>
<div id="st-container" class="st-container">
        <div class="st-pusher">		
            <div class="st-content"><!-- this is the wrapper for the content -->
                <div class="st-content-inner">
                    <div class="clearfix">
						<div id="st-trigger-effects" class="column hidden-lg hidden-md">
							<button data-effect="st-effect-3">
								<i class="fa fa-bars fa-lg"></i>
							</button>
						</div>
						<section id="topheader">
						   <section id="topbar">
							  <div class="container">
								 <div class="row">
									<!-- start col -->
									<div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
									   <div class="currency pull-left">&nbsp;</div>
									</div>
									<div class="col-lg-9 col-md-9 col-sm-6 col-xs-12 hidden-xs hidden-sm header-right">
									   <ul class="hidden-sm hidden-xs links pull-right shopping-cart-box">
										  <li class="cart-box">
											 <a href="http://demo61.websieuviet.com/store/cart">
											 <i class="fa fa-shopping-cart"></i>&nbsp;Giỏ hàng(<strong>0</strong>)
											 </a>
										  </li>
										  <li>
											 <a href="#" title="Viet Nam" class="select_store_lang" lang_iso="VN" rel="1261">
											 Viet Nam								<img src="http://demo61.websieuviet.com/theme/frontend/default/style/default/image/new/flags/vn.png" alt="VN" title="VN" width="25" class="v_middle">
											 </a>
										  </li>
									   </ul>
									</div>
									<div class="show-mobile hidden-lg hidden-md pull-right">
									   <div class="quick-access pull-left shopping-cart-box">
										  <div class="quickaccess-toggle cart-box"> 
											 <a href="http://demo61.websieuviet.com/store/cart" title="Giỏ hàng"><i class="fa fa-shopping-cart"></i>(<strong>0</strong>)</a>
										  </div>
									   </div>
									   <div class="quick-access pull-left shopping-cart-box">
										  <div class="quickaccess-toggle cart-box"> 
											 <a href="#" title="Viet Nam" class="select_store_lang" lang_iso="VN" rel="1261">
											 <span class="hidden-xs hidden-sm">Viet Nam</span>
											 <img src="http://demo61.websieuviet.com/theme/frontend/default/style/default/image/new/flags/vn.png" alt="VN" title="VN" width="25" class="v_middle">
											 </a>
										  </div>
									   </div>
									</div>
								 </div>
							  </div>
						   </section>
						</section>
						<section class="row-section top-logo top-html top-search ">
						   <div class="container">
							  <div class="row">
								 <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
									<h1 class="logo">
									   <a href="{{ URL::to('/') }}" title="logo">
									   <img src="{{ Config::get('site.uploads_dir') . '/settings/' . $settings->logo }}" alt="" style="max-width: 100%; max-height:100%">									</a>
									</h1>
								 </div>
								 <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								 </div>
								 <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
									<div class="header-right">
									   <form class="search" name="search" method="post" action="#" onsubmit="search_product('http://demo61.websieuviet.com/store/search'); return false;">
										  <div><input type="hidden" name="core[security_token]" value="a9076d46f9d9f70b369bed7a6cff1f20"></div>
										  <input type="text" name="q" id="q" value="" placeholder="Tìm kiếm" class="search_query">
										  <button class="button" type="submit"><i class="fa fa-search"></i></button>
									   </form>
									</div>
								 </div>
							  </div>
						   </div>
						</section>
						<div id="site_content">
							@yield('content')
							<footer>
							  <section class="row-section footer-html footer-html footer-html footer-html  row_3" style="background:#282828 !important; padding:25px 0px !important; ">
								 <div class="container">
									<div class="row">
									   <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
										  <h3>THÔNG TIN CÔNG TY</h3>
										  <ul class="news-footer">
											 <li><a title=""> <span>Giới thiệu công ty</span> </a></li>
											 <li><a title=""> <span>Tiêu chí bán hàng</span> </a></li>
											 <li><a title=""> <span>Đối tác chiến lược</span> </a></li>
											 <li><a title=""> <span>Hệ thống trung tâm</span> </a></li>
										  </ul>
									   </div>
									   <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
										  <h3>CHÍNH SÁCH</h3>
										  <ul class="news-footer">
											 <li><a title=""> <span>Giao nhận - lắp đặt</span> </a></li>
											 <li><a title=""> <span>Dùng thử sản phẩm</span> </a></li>
											 <li><a title=""> <span>Khu vực giao nhận</span> </a></li>
											 <li><a title=""> <span>Chính sách thẻ khách hàng</span> </a></li>
										  </ul>
									   </div>
									   <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
										  <h3>HỖ TRỢ KHÁCH HÀNG</h3>
										  <ul class="news-footer">
											 <li><a title=""> <span>Hướng dẫn mua hàng</span> </a></li>
											 <li><a title=""> <span>Hình thức thanh toán</span> </a></li>
											 <li><a title=""> <span>Chăm sóc khách hàng</span> </a></li>
											 <li><a title=""> <span>Đổi - trả sản phẩm</span> </a></li>
										  </ul>
									   </div>
									   <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
										  <h3>THÔNG TIN</h3>
										  <ul class="news-footer">
											 <li><a title=""> <span>Liên hệ</span> </a></li>
											 <li><a title=""> <span>Hợp tác</span> </a></li>
											 <li><a title=""> <span>Giải thưởng</span> </a></li>
											 <li><a title=""> <span>Bảo mật thông tin</span> </a></li>
										  </ul>
									   </div>
									</div>
								 </div>
							  </section>
							  <section class="row-section footer-html row_4" style="background:#fff !important; padding:10px 0px !important; ">
								 <div class="container">
									<div class="copyright">
									   <p>{{ $settings->website_name }}</p>
									   <p>
										  Copyright © <script type="text/javascript">var creditsyear = new Date();document.write(creditsyear.getFullYear());</script>2016 
										   Thiết kế bởi <a href="http://chiaseaz.com" title="http://chiaseaz.com">Chiaseaz.com</a>
									   </p>
									</div>
								 </div>
							  </section>
						   </footer>
						</div>
                    </div>
                </div>
            </div> 
        </div>
    </div>

</body>
</html>