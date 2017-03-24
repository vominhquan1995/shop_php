@extends('backend.master')
@section('controller','Danh mục')
@section('action','Thêm')
@section('danhmuc', 'active')
@section('them_dm', 'active')
@section('content')
<section class="content">
          <div class="row">
            <script type="text/javascript"></script>
            <!-- left column -->
            <div class="col-md-12">
             @include ('backend.blocks.error')
              <!-- general form elements -->
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Quick Example</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" class="form-horizontal" method="post" action="{!! route('admin.category.getAdd')!!}">
                <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                  <div class="box-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1" class="col-md-2">Danh mục</label>
                        <div class="col-md-8"> 
                            <select class="form-control" name="parentId" id="parentId" onChange="changeID(this)">
                              <option value="-1">Mời bạn chọn</option>
                              <option value="0">----Danh mục mới----</option>
                              <?php cate_parent($data); ?>
                            </select>
                        </div>
                      </div>
                         <div class="form-group" hidden="true" id="type_cate">
                        <label for="exampleInputEmail1" class="col-md-2">Loại sản phẩm</label>
                        <div class="col-md-8"> 
                            <select class="form-control" name="parentId" id="type_list">
                              <option value="0">Mời bạn chọn</option> 
                              <?php list_type($data); ?>                     
                            </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1" class="col-md-2">Tiêu đề</label>
                        <div class="col-md-8"> 
                            <input type="text" class="form-control" name="txtTieude"  placeholder="Tiêu đề..." value="{!! old('txtTieude') !!}">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1" class="col-md-2">Thứ tự</label>
                        <div class="col-md-8"> 
                            <input type="text" class="form-control" name="txtThutu" placeholder="Thứ tự..." value="{!! old('txtThutu') !!}">
                        </div>
                      </div>

                      <!-- 
                      <div class="form-group">
                        <label for="exampleInputEmail1" class="col-md-2">Hình ảnh</label>
                        <div class="col-md-8"> 
                            <input type="file" name="flimage">
                        </div>
                      </div>
                      !-->
                      <div class="form-group">
                        <label for="exampleInputEmail1" class="col-md-2">Mô tả</label>
                        <div class="col-md-8"> 
                            <textarea class="form-control" name="txtMota" id="txtMota" rows="4" >{!! old('txtMota') !!}</textarea>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="txtKeyword" class="col-md-2" >Keyword</label>
                        <div class="col-md-8"> 
                            <input type="text" class="form-control" name="txtKeyword" id="txtKeyword" placeholder="Keyword..." value="{!! old('txtKeyword') !!}">
                        </div>
                      </div>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Thêm danh mục</button>
                    <button type="reset" class="btn btn-default">Làm lại</button>
                  </div>
                </form>
              </div><!-- /.box -->

            </div><!--/.col (left) -->
            <!-- right column -->
          </div>   <!-- /.row -->
          

        </section>
    <script>
 function changeID(obj){
    if(obj.options[obj.selectedIndex].value != 0 && obj.options[obj.selectedIndex].value != -1 )
    {
      document.getElementById('type_cate').hidden=false;
       addListType(obj.options[obj.selectedIndex].text);
    }else{
       document.getElementById('type_cate').hidden=true;
    }
  }
    function addListType($name) {
                var x = document.getElementById("type_list");
                for(i=0;i<x.length;i++ )
                {
                  var y=x.options[i].text.split("-", 1); 
                   
                  var $n= y[0].localeCompare($name)   ;      
                  console.log($n);        
                  if($n!=0)
                  {     
                    console.log(y[0]);
                    console.log($name);               
                    x.options[i].;
                  }
                }            
    //             // var option = document.createElement("option");
    //             // option.text = $id;
    //             // option.id = $id;
    //             // x.add(option);
      }
</script>
@stop