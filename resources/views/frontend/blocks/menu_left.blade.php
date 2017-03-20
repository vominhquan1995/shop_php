  <div class="container">
      <div class="col-md-3 sidebar">
        <div class="sb-block">
          <div class="sb-block-title">
            <h2>Danh mục sản phẩm</h2>
          </div>
         <div class="glossymenu" style="float:left">
          @foreach($categorys as $category)       
                  <a class="menuitem submenuheader" href="#">{!! $category->name !!}</a>    
                  <div class="submenu">            
                  <?php $count =  DB::table('categories')->where('prarent_id',$category->id)->count(); ?> 
                  <?php if($count!=0){ ?>
                      <?php $parent = DB::table('categories')->select('id','name','alias','prarent_id')->where('prarent_id',$category->id)->orderBy('id','DESC')->get(); ?>
                      @foreach($parent as $parents)
                      
                      <ul>               
                        <li>
                          <a href="{!! url('danh-muc',[$parents->alias]) !!}"><?php echo $parents->name; ?></a>
                         </a>
                        </li>
                      </ul>
                                  
                      @endforeach
                <?php } ?>  
                </div>      
          @endforeach
        </div>
        <div class="sb-block"> 
          <a href="#">
          <img class="img-responsive" src="{!! asset('public/images/banner_category_sidebar.png') !!}"></a> </div>
        <div class="sb-block">
          <div class="sb-block-title">
            <h2>Sản phẩm bán chạy</h2>
          </div>
          <div class="sb-block-content sb-products">
            <ul>
              @for ($i=0; $i < 5 ; $i++)
              <li class="product-item-mini"> 
                <a href="{!! url('chi-tiet-san-pham') !!}" > 
                  <img class="pim-image" src="{!! asset('public/images/van-hoc-teen-thoi-ao-trang--1-.jpg') !!}">
                  <h3 class="pim-name">Nếu gặp người ấy</h3>
                  <p class="pim-description"> Cả hai im lặng một lúc, tôi...</p>
                  <p class="pim-price"> 65.000₫ <span> 86.000₫ </span> </p>
                </a> 
               </li>
              @endfor
            </ul>
          </div></div>
      </div>
  </div>
</div>
<script type="text/javascript">
ddaccordion.init({
  headerclass: "submenuheader", //Shared CSS class name of headers group
  contentclass: "submenu", //Shared CSS class name of contents group
  revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click" or "mouseover
  collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
  defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
  onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
  animatedefault: false, //Should contents open by default be animated into view?
  persiststate: true, //persist state of opened contents within browser session?
  toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
  togglehtml: ["suffix", "<img src='public/images/plus.gif' class='statusicon' />", "<img src='public/images/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
  animatespeed: "normal", //speed of animation: "fast", "normal", or "slow"
  oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
    //do nothing
  },
  onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
    //do nothing
  }
})
</script>
<style type="text/css">
.glossymenu{
margin: 0px;
width: 100%;
border: 1px solid #9A9A9A;
}
.glossymenu a.menuitem{
background: black url(public/images/glossyback.gif) repeat-x bottom left;
font: bold 11px Arial, Helvetica, sans-serif;
color: white;
display: block;
position: relative; /*To help in the anchoring of the ".statusicon" icon image*/
width: auto;
padding: 7px 0;
padding-left: 10px;
text-decoration: none;
}
.glossymenu a.menuitem:visited, .glossymenu .menuitem:active{
color: white;
}
.glossymenu a.menuitem .statusicon{ /*CSS for icon image that gets dynamically added to headers*/
position: absolute;
top: 5px;
right: 5px;
border: none;
}

.glossymenu a.menuitem:hover{
background-image: url(public/images/bgfooter.gif);
}

.glossymenu div.submenu{ /*DIV that contains each sub menu*/
background: white;
}

.glossymenu div.submenu ul{ /*UL of each sub menu*/
list-style-type: none;
margin: 0;
padding: 0;
}

.glossymenu div.submenu ul li{
border-bottom: 1px solid #CCCCCC;
height:25px;
max-height:25px;
}

.glossymenu div.submenu ul li a{
display: block;
font: normal 13px Arial, Helvetica, sans-serif;
color: black;
text-decoration: none;
padding: 5px 0;
padding-left: 10px;
}

.glossymenu div.submenu ul li a:hover{
background: #DFDCCB;
colorz: white;
}
</style>
