@extends('frontend.master')
@section('title', 'Handmake - Handmake by me - tự tay làm những sản phẩm trang trí đẹp mắt')
@section('trangchu', 'active')
@section('content')
<!-- slide --- banner -->
@include('frontend.blocks.banner')
<!-- end slide --- banner -->
<!-- menu-left-->

<!-- end menu-left- -->
<!-- san pham mới -->
<section>
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar">
		@include('frontend.blocks.menu_left')
      </div>
      <div class="col-md-9 content-category">
        @include('frontend.blocks.product_new')
<!-- end sản phẩm mới -->
<!-- san pham khuyến mai -->
@include('frontend.blocks.product_sale')
<!-- end sản phẩm khuyến mại-->
<!-- sản phẩm nổi bật -->
@include('frontend.blocks.banchay')
      </div>
    </div>
  </div>
</section>
@stop