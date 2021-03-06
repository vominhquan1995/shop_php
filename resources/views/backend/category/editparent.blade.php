@extends('backend.master')
@section('controller','Danh mục')
@section('action','Sữa')
@section('danhmuc', 'active')
@section('content')
<section class="content">
          <div class="row">
            <!-- left column -->
            <div class="col-md-12">
             @include ('backend.blocks.error')
              <!-- general form elements -->
              <div class="box box-primary">
                <!-- form start -->
                <form role="form" class="form-horizontal" method="post" action="">
                <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
                  <div class="box-body">
                      <div class="form-group">
                        <label for="exampleInputEmail1" class="col-md-2">Tiêu đề</label>
                        <div class="col-md-8"> 
                            <input type="text" class="form-control" name="txtTieude"  placeholder="Tiêu đề..." value="{!! old ('txtTieude',isset($data)?$data["name"]:"") !!}">
                        </div>
                      </div>
                    
                      <div class="form-group">
                        <label for="exampleInputEmail1" class="col-md-2">Mô tả</label>
                        <div class="col-md-8"> 
                            <textarea class="form-control" name="txtMota" id="txtMota" rows="4" >{!! old ('txtMota',isset($data)?$data["discription"]:"") !!}</textarea>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="txtKeyword" class="col-md-2" >Keyword</label>
                        <div class="col-md-8"> 
                            <input type="text" class="form-control" name="txtKeyword" id="txtKeyword" placeholder="Keyword..." value="{!! old ('txtKeyword',isset($data)?$data["keyworks"]:"") !!}">
                        </div>
                      </div>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Sữa danh mục</button>
                    <button type="reset" class="btn btn-default">Làm lại</button>
                  </div>
                </form>
              </div><!-- /.box -->

            </div><!--/.col (left) -->
            <!-- right column -->
          </div>   <!-- /.row -->

        </section>
 
    
@stop