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
            <li class="active">Đăng nhập</li>
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
            <form accept-charset="UTF-8" action="" id="customer_register" method="post">
              <input type="hidden" name="_token" value="{{ csrf_token() }}">
              <h3 class="form-heading">Đăng nhập tài khoản</h3>
              <p class="form-description">Nếu bạn chưa có tài khoản, xin vui lòng chuyển qua trang đăng ký.</p>
              <div class="row">
                <div class="col-md-3">
                  <p class="text-right">Username <span>*</span></p>
                </div>
                <div class="col-md-8">
                  <input type="text" value="{!! old('username') !!}" name="username">
                </div>
              </div>
              <div class="row">
                <div class="col-md-3">
                  <p class="text-right">Mật khẩu <span>*</span></p>
                </div>
                <div class="col-md-8">
                  <input type="password" value="{!! old('password') !!}" name="password">
                </div>
              </div>
              <div class="row">
                <div class="col-md-3"> </div>
                <div class="col-md-8">
                  <p><a href="{!! url('dang-ky') !!}">Đăng ký</a></p>
                  <button class="comment-submit">Đăng nhập</button>
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