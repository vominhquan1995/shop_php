@extends('frontend.master')


@section('content')
<div class="block">
<div class="row ">
    <div class="col-md-12">
        <div class="col-md-6 col-md-offset-3">
        <h2 style="color: red"> Thông tin tài khoản </h2>
     <h3 class="btn-success">   {!!$mess != "" ? $mess : "" !!}</h3>
    
            <form onsubmit="return validate()" class="form-horizontal" role="form" method="POST" action="">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">

						<div class="form-group">
							<label class="col-md-4 control-label">Mật khẩu củ(*)</label>
							<div class="col-md-6">
								<input required type="password" class="form-control" name="oldpass" value="{!!  Auth::User()->password !!}" readonly>
							</div>
						</div>		
						<div class="form-group">
							<label class="col-md-4 control-label">Mật khẩu mới</label>
							<div class="col-md-6">
								<input required type="password" id="mk" class="form-control" name="newpass" value="">
							</div>
						</div>
                        <div class="form-group">
							<label class="col-md-4 control-label"> Nhập lại mật khẩu mới</label>
							<div class="col-md-6">
								<input required type="password" id="mk1" class="form-control" name="newpass1" value="">
							</div>
						</div>
                        	<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<button type="submit" class="btn btn-primary">
									Đổi mật khẩu
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
<script>
	function validate(){
		var pass = $('#mk').val();
		var passCfm = $('#mk1').val();

		if(pass != passCfm){
			alert('Xác nhận mật khẩu không chính xác');
			return false;
		}
		
		return true;
	}
</script>
@stop