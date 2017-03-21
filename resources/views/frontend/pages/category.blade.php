@extends('frontend.master')
@section('sanpham', 'active')
@section('title','Danh mục sách các loại')
@section('content')
<!-- hien tiêu đề -->
<section class="content-slide">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <ul class="breadcrumb">
          <li><a href="{!! asset('/') !!}">Trang chủ</a></li>
          <li class="active">Danh mục</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- end tiêu đề -->
<section>
  <div class="container">
    <div class="row">
       <div class="col-md-3 sidebar">
       @include('frontend.blocks.menu_left')
      </div>
      <div class="col-md-9 content-category">
        <div class="sb-block-title">
          <h2>Danh Sách Sản Phẩm</h2>
         </div>
        <div class="cc-products">
          <div class="row">
          <!-- sản phẩm category -->
            @foreach ($products as $product)
            <div class="col-md-4 col-sm-6 ">
              <div class="product-item-category" style="height: 420px;">
                <div class="product-item-image"> <a href="{!! url('/'.$product->alias) !!}"> 
                <img class="img-responsive" src="{!! asset('public/upload/'.$product->image) !!}"> </a> </div>
                <a class="product-item-name" href="{!! url('/'.$product->alias) !!}">{!! $product->name !!}</a>
                <div>
                  @if($product->pricesale > 0)
                  <p class="product-item-price"> <?php echo number_format($product->pricesale,0,',','.') ?>đ<span class="product-item-price-sale"> <?php echo number_format($product->price,0,',','.') ?>đ </span> </p>
                  @else
                  <p class="product-item-price"><?php echo number_format($product->price,0,',','.') ?>đ </p>
                  @endif
                  <a class="product-item-cart add_to_cart" href="javascript:void(0)" data-id="{!! $product->id !!}"><span></span>Thêm vào giỏ</a> </div>
              </div>
            </div>
            @endforeach
            <!-- end sản phẩm category -->
          </div>
        </div>
        <!-- phẩn trang -->
        <div class="cc-toolbar">
          <div class="row">
            <div class="col-md-12">
              <nav class="pull-right">
                <?php $products->setPath('san-pham'); ?>
                <?php echo $products->render(); ?>
              </nav>
            </div>
          </div>
        </div>
        <!-- end phân trang -->
      </div>
  </div>
  </div>
</section>
@stop