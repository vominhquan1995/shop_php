
  <div class="container">
      <div class="col-md-9 col-sm-12 col-xs-12">
        <div class="block">
          <h2 class="block-title">Sản phẩm giảm giá</h2>
          <div class="block-content">
            <div class="owl-product owl-carousel owl-theme">
            @foreach ($product_sales as $product_sale)
            <!-- hien sản phẩm -->
                <div class="owl-item" style="width: 210px;">
                  <div class="item">
                    <div class="product-item">
                        <div class="product-item-image">
                          <a href="{!! url('/'.$product_sale->alias) !!}"> 
                            <img class="img-responsive" src="{!! asset('public/upload/'.$product_sale->image) !!}"> 
                          </a> 
                        </div>
                      <a class="product-item-name" href="{!! url('/'.$product_sale->alias) !!}">{!! substr($product_sale->name,0,20) !!}</a>
                      <div>
                        <p class="product-item-price"><?php echo number_format($product_sale->price,0,',','.') ?>đ </p>
                        <span class="product-item-price-sale"> <?php echo number_format($product_sale->pricesale,0,',','.') ?>đ </span> 
                        <a class="product-item-cart add_to_cart" href="javascript:void(0)" data-id="{!! $product_sale->id !!}"><span></span>Thêm vào giỏ</a> </div>
                      <span class="product-item-sale"></span> </div>
                  </div>
                </div>
            <!-- end hien sản pham -->
            @endforeach
            </div>
          </div>
        </div>
      </div>
  </div>
