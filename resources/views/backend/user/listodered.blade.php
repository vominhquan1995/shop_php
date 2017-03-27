@extends('frontend.master')


@section('content')
<div class="block">
<div class="row ">
    <div class="col-md-12">
        <div class="col-md-6 col-md-offset-3">
        <h2 style="color: red"> Thông tin tài khoản  </h2>	<a href="doi-mat-khau">Đổi mật khẩu</a> <br> <a href="doi-mat-khau">Xem đơn hàng</a>
            <table id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                         <th>Tên</th>
                         <th>Email</th>
                        <th>Số điện thoại</th>
                        <th>Địa chỉ</th>                        
                        <th>Ngày đặt</th>
                        <th>Số lượng</th>
                        <th>Trạng thái</th>
                        <th>Tổng cộng</th>
                        
                      </tr>
                    </thead>
                    <tbody> 
                    @foreach($hoadon as $list)
                      <tr>
                    <td class="list_show" data-id="{!! $list["id"] !!}">{!! $list["name"] !!} <img src="{!! asset('public/upload/logoicon/dir-plus.png') !!}"></td>
                        <td>{!! $list["email"] !!}</td>
                        <td>{!! $list["phone"] !!}</td>
                        <td>{!! $list["addreass"] !!}</td>
                        <td>{!! $list["created_at"] !!}</td>
                        <td>{!! $list["total_qty"] !!}</td>
                        <td align="center" data-id="view{!! $list["id"] !!}">
                            @if($list["status"] == 0)
                              Đang được giao
                    
                            @else
                              Đã hoàn thành
                            @endif
                        </td>
                        <td><?php echo number_format($list["total_price"],0,',','.') ?>đ</td>
                       
             
                       
                      </tr>
                  <?php 
                        $cthoadon = DB::table('chitiethoadons')
                                    ->join('products','chitiethoadons.id_sanpham','=','products.id')
                                    ->where('chitiethoadons.id_hoadon',$list["id"])
                                    ->groupBy('products.id','chitiethoadons.id_sanpham')->get();
                      ?>
                      <tr class="hide_listcthd show_listcthd_{!! $list['id'] !!}">
                        <th colspan="2">Tên sản phẩm</th>
                        <th>Hình ảnh</th>
                        <th colspan="2">Số lượng</th>
                        <th colspan="2">Giá sản phẩm</th>
                        <th colspan="2">Tổng giá sản phẩm</th>
                      </tr>
                      @foreach($cthoadon as $listcthd)
                       <tr class="hide_listcthd show_listcthd_{!! $list['id'] !!}">
                        <td colspan="2"><a href="{!! url('/',$listcthd->alias) !!}" target="new">{!! $listcthd->name !!}</a></td>
                        <td><img src="{!! asset('public/upload/'.$listcthd->image) !!}" width="30"></td>
                        <td colspan="2">{!! $listcthd->soluong !!}</td>
                        <td colspan="2"><?php echo number_format($listcthd->giasp,0,',','.') ?>đ</td>
                        <td colspan="2"><?php echo number_format($listcthd->tong_giasp,0,',','.') ?>đ</td>
                      </tr>
                      @endforeach
                    @endforeach
                    </tbody>
                  </table>

        </div>
            <div class="col-md-6">
        
        </div>
    </div>
</div>
</div>
<script>
 $(document).ready(function(){
	$(".hide_listcthd").hide();
 	$(".list_show").click(function(){
 		var id = $(this).attr('data-id');
 		$(".show_listcthd_"+id).toggle("fast");
 	});
 });</script>
@stop

