@extends('frontend.master')
@section('title','Đăng ký thành viên')
@section('content')
<div id="content">
  <section class="">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <ul class="breadcrumb">
            <li><a href="{!! url('/') !!}">Trang chủ</a></li>
            <li class="active">Đăng ký</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <section>
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <div class="form-style form-login">
            <form role="form" accept-charset="UTF-8" action="" method="post">
              <h3 class="form-heading">Đăng ký tài khoản</h3>
              <input type="hidden" name="_token" value="{!! csrf_token() !!}" />
              <p class="form-description">Nếu bạn có một tài khoản, xin vui lòng chuyển qua trang  <a href="{!! url('dang-nhap') !!}">Đăng nhập </a></p>
              <div class="row">
                <div class="col-md-3">
                  <p class="text-right">Username <span>*</span></p>
                </div>
                <div class="col-md-8">
                  <input type="text"  class="form-control" value="{!! old('username') !!}" name="username" required>
                </div>
              </div>
              
              <div class="row">
                <div class="col-md-3">
                  <p class="text-right">Mật khẩu <span>*</span></p>
                </div>
                <div class="col-md-8">
                  <input type="password" class="form-control"  value="{!! old('password') !!}" name="password" required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-3">
                  <p class="text-right">Email <span>*</span></p>
                </div>
                <div class="col-md-8">
                  <input type="email" class="form-control"  value="{!! old('email') !!}" name="email" required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-3">
                  <p class="text-right">Tên <span>*</span></p>
                </div>
                <div class="col-md-8">
                  <input type="text" class="form-control"  value="{!! old('firstname') !!}" name="firstname" required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-3">
                  <p class="text-right">Điện thoại<span>*</span></p>
                </div>
                <div class="col-md-8">
                  <input type="text" class="form-control"  value="{!! old('phone') !!}" name="phone" required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-3">
                  <p class="text-right">Địa chỉ <span>*</span></p>
                </div>
                <div class="col-md-8">
                  <input type="text" class="form-control"  value="{!! old('address') !!}" name="address" required>
                  <input type="hidden"   value="2"  name="level" >
                </div>
              </div>
              <div class="row">
                <div class="col-md-3"> </div>
                <div class="col-md-8">
                
              
                  <button type="submit" class="comment-submit btn-success">Đăng ký</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
@stop