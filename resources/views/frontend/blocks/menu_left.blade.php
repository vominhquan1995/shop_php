  <section class="">
    <div class="container">
      <div class="col-md-3 col-md-9 sidebar">
        <div class="sb-block">
          <div class="sb-block-title">
            <h2>Danh mục sản phẩm</h2>
          </div>
         <div class="glossymenu" style="float:left">
          <?php $categorys = DB::table('categories')->select('id','name','alias','prarent_id')->where('prarent_id',0)->orderBy('id','DESC')->get(); ?> 
          @foreach($categorys as $category)       
                  <a class="menuitem submenuheader"href="{!! url('loai-san-pham',[$category->id]) !!}">{!! $category->name !!}</a>    
                  <div class="submenu">            
                  <?php $count =  DB::table('categories')->where('prarent_id',$category->id)->count(); ?> 
                  <?php if($count!=0){ ?>
                      <?php $parent = DB::table('categories')->select('id','name','alias','prarent_id')->where('prarent_id',$category->id)->orderBy('id','DESC')->get(); ?>
                      @foreach($parent as $parents)                
                      <ul>               
                        <li>
                          <a href="{!! url('danh-muc',[$parents->alias]) !!}"><?php echo $parents->name; ?></a>
                        </li>
                      </ul>
                                  
                      @endforeach
                <?php } ?>  
                </div>      
          @endforeach</div></div>
        <div class="sb-block"> 
          <a href="#">
          <img class="img-responsive" style="margin-top=5px;"src="{!! asset('public/images/banner_category_sidebar.png') !!}"></a> </div>
        <div class="sb-block">
          <div class="sb-block-title">
            <h2>Sản phẩm bán chạy</h2>
          </div>
          <div class="sb-block-content sb-products" >
              <?php  
              $product_banchays = DB::table('chitiethoadons')
            ->join('products', 'chitiethoadons.id_sanpham', '=', 'products.id')
            ->join('hoadons', 'chitiethoadons.id_hoadon', '=', 'hoadons.id')
            ->select('chitiethoadons.id_sanpham', 'products.*', 'hoadons.status')
            ->where('hoadons.status',1)
            ->groupBy('products.id','chitiethoadons.id_sanpham')
            ->get(); ?>
              @foreach ($product_banchays as $product_banchay)
              <div data-id="{!! $product_banchay->id !!}">
                 <li class="product-item-mini" > 
                <a href="{!! url('/'.$product_banchay->alias) !!}" > 
                  <img class="pim-image"src="{!! asset('public/upload/'.$product_banchay->image) !!}">
                  <h3 class="pim-name"  >{!! substr($product_banchay->name,0,15) !!}</h3>
                  <p class="pim-price">

                    <?php 
                    if(number_format($product_banchay->pricesale,0,',','.')==0)
                    {
                          echo number_format($product_banchay->price,0,',','.')  ;
                    }else
                    {
                     echo number_format($product_banchay->pricesale,0,',','.');
                    }?>đ 
                     <span><?php echo number_format($product_banchay->price,0,',','.') ?>đ</span>
                  </p>
                </a> 
               </li>
              </div>         
             @endforeach
          </div>
        </div>
      </div>
  </div>
  </section>
  
  <script type="text/javascript">
ddaccordion.init({
  headerclass: "submenuheader", //Shared CSS class name of headers group
  contentclass: "submenu", //Shared CSS class name of contents group
  revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click" or "mouseover
  collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
  defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
  onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
  animatedefault: false, //Should contents open by default be animated into view?
  persiststate: true, //persist state of opened contents within browser session?
  toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
    togglehtml: ["suffix", "<img src='' />", "<img src=''/>"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
  animatespeed: "normal", //speed of animation: "fast", "normal", or "slow"
  oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
    //do nothing
  },
  onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
    //do nothing
  }
})
</script>