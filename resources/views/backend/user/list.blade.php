@extends('backend.master')
@section('controller','Tài khoản')
@section('action','Danh sách')
@section('user','active')
@section('list_user', 'active')
@section('content')
 <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>Họ tên</th>
                        <th>Tài khoản</th>                        
                        <th>Email</th>
                        <th>Điện thoại</th>
                        <th>Địa chỉ</th>
                        <th>Quyền</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                    @foreach($dbUser as $user)
                      <tr>
                        <td>{!! $user->firstname !!}</td>
                        <td>{!! $user->username !!}</td>
                        <td>
                         {!! $user->email !!}
                        </td>
                        <td>
                          {!! $user->phone !!}
                        </td>
                        <td>
                        {!! $user->address !!}
                        <td>
                        @if($user->level == 1)
                          <label>Admin</label>
                        @else
                         <label>Client</label>
                        @endif
                       
                        </td>
                       
                      </tr>
                    @endforeach
                
                    </tbody>
                  </table>
                  <div class="pull-right">
                    <?php $dbUser->setPath('list'); ?>
                    <?php echo $dbUser->render(); ?>                 
                  </div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

              <!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section>
    
@stop