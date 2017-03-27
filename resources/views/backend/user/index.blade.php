@extends('frontend.master')


@section('content')
<div class="block">
<div class="row ">
    <div class="col-md-12">
        <div class="col-md-6 col-md-offset-3">
        <h2 style="color: red"> Thông tin tài khoản  </h2>	<a href="doi-mat-khau">Đổi mật khẩu</a> <br> <a href="doi-mat-khau">Xem đơn hàng</a>
						
     <h3 class="btn-success">   {!!$mess != "" ? $mess : "" !!}</h3>
    
            <form  class="form-horizontal" role="form" method="POST" action="">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">

						<div class="form-group">
							<label class="col-md-4 control-label">Username</label>
							<div class="col-md-6">
								<input required type="text" class="form-control" name="username" value="{!!  Auth::User()->username !!}" readonly>
							</div>
						</div>		
						<div class="form-group">
							<label class="col-md-4 control-label">Name</label>
							<div class="col-md-6">
								<input required type="text" class="form-control" name="firstname" value="{!!  Auth::User()->firstname !!}">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label">E-Mail Address</label>
							<div class="col-md-6">
								<input required type="email" class="form-control" name="email" value="{!!  Auth::User()->email !!}">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label">Phone number</label>
							<div class="col-md-6">
								<input required type="text" class="form-control" name="phone" value="{!!  Auth::User()->phone !!}">
							</div>
					</div>
						<div class="form-group">
							<label class="col-md-4 control-label">Address</label>
							<div class="col-md-6">
								<input required type="text" class="form-control" name="address" value="{!!  Auth::User()->address !!}">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<button type="submit" class="btn btn-primary">
									Đổi thông tin
								</button>
							</div>
						</div>
					</form>
        </div>
            <div class="col-md-6">
        
        </div>
    </div>
</div>
</div>

@stop