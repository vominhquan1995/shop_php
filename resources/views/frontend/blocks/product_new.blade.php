
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="block">
          <h2 class="block-title">Sản phẩm mới</h2>
          <div class="block-content">
            <div class="owl-product owl-carousel">
            @foreach ($product_news as $product_new)
             <!-- sản phẩm -->
              <div class="owl-item" style="width: 210px;" data-id="{!! $product_new->id !!}">
                <div class="item">
                  <div class="product-item">
                    <div class="product-item-image"> <a href="{!! url('/'.$product_new->alias) !!}"> 
                    <img class="img-responsive" src="{!! asset('public/upload/'.$product_new->image) !!}" > </a> </div>
                    <a class="product-item-name" href="{!! url('/'.$product_new->alias) !!}">{!! substr($product_new->name,0,20); !!}...</a>
                    <div >
                        @if($product_new->pricesale > 0)
                        <p class="product-item-price"> <?php echo number_format($product_new->price,0,',','.') ?>đ</p>
                        <span class="product-item-price-sale"> <?php echo number_format($product_new->pricesale,0,',','.') ?>đ </span> 
                        @else
                        <p class="product-item-price"><?php echo number_format($product_new->price,0,',','.') ?>đ </p>
                        <span class="product-item-price-sale"></span>
                        <br/>
                        @endif
                      <a class="product-item-cart add_to_cart" href="javascript:void(0)" data-id="{!! $product_new->id !!}"><span></span>Thêm vào giỏ</a> 
                    </div>
                    @if($product_new->pricesale > 0)
                    <span class="product-item-sale"></span>
                    @endif
                  </div>
                </div>
              </div>
             <!-- end sản phẩm -->
             @endforeach
              </div>
            </div>
          </div>
        </div>
