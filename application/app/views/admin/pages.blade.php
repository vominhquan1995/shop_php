
<div class="white_container">
		
		<h2 style="margin-bottom:20px; float:left;"><i class="fa fa-file"></i><span> Trang</span></h2>
		<div class="btn btn-color" style="margin-left:20px;" data-toggle="modal" data-target="#new-page"><span class="fa fa-plus"></span> Tạo trang</div>
		<div style="clear:both"></div>
		<div class="table-responsive">
			<table class="table table-condensed">
				<tr>
					<th>Tiêu đề</th>
					<th>Trạng thái</th>
					<th>Thứ tự</th>
					<th>Quản lý</th>
					@foreach($pages as $page)

							<tr>
								<td>
									{{ $page->title }}
								</td>
								<td>
									{{ $page->active }}
								</td>
								<td>
									{{ $page->order }}
								</td>
								<td style="width:190px;">
									<a href="#" data-toggle="modal" data-target="#edit-{{ $page->id }}" class="btn btn-xs btn-primary edit-media" style="margin-right:10px;"><span class="fa fa-edit"></span> Sửa</a>
									
										<a href="{{ URL::to('admin/pages/delete') . '/' . $page->id }}" class="btn btn-xs btn-danger"><span class="fa fa-trash-o"></span> Xoá</a>
								
								</td>
								
							</tr>
							
					@endforeach
			</table>
		</div>
		
	</div>



	<!-- Create Category Modal -->
	<div class="modal fade" id="new-page" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Tạo mới</h4>
			</div>
		    <form method="POST" action="{{ URL::to('admin/pages/create') }}" accept-charset="UTF-8">
		    <div class="modal-body">
		      
				<ul>
			        <li>
			        	<label for="title">Tiêu đề</label>
	           			<input type="text" class="form-control" name="title" id="title" placeholder="Tiêu đề" />
			        </li>

			        <li>
			        	<label for="url">Đường dẫn</label>
	           			<input type="text" class="form-control" name="url" id="url" placeholder="Đường dẫn" />
			        </li>

			        <li>
		        		<label for="body">Nội dung</label>
	                	<p><textarea name="body" class="form-control" id="body" placeholder="Nội dung"></textarea></p>   
		        	</li>

		        	<li>
			        	<label for="order">Thứ tự</label>
	           			<input type="text" class="form-control" name="order" id="order" value="0" placeholder="Thứ tự" />
			        </li>

			        <li>
						<label for="active">Trạng thái:</label>

						@if(isset($page->active))<?php $active = $page->active ?>@else<?php $active = 1 ?>@endif
						<div class="onoffswitch">
							{{ Form::checkbox('active', '', $active, array('class' => 'onoffswitch-checkbox', 'id' => 'active')) }}					   
						    <label class="onoffswitch-label" for="active">
						        <div class="onoffswitch-inner"></div>
						        <div class="onoffswitch-switch"></div>
						    </label>
						</div>
					</li>

					<li>
						<label for="show_in_menu">Hiển thị lên thanh menu:</label>

						@if(isset($page->show_in_menu))<?php $show_in_menu = $page->show_in_menu ?>@else<?php $show_in_menu = 1 ?>@endif
						<div class="onoffswitch">
							{{ Form::checkbox('show_in_menu', '', $show_in_menu, array('class' => 'onoffswitch-checkbox', 'id' => 'show_in_menu')) }}					   
						    <label class="onoffswitch-label" for="show_in_menu">
						        <div class="onoffswitch-inner"></div>
						        <div class="onoffswitch-switch"></div>
						    </label>
						</div>
					</li>

				</ul>
		      	
			</div><!-- .modal-body -->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
				<input type="submit" class="btn btn-color" value="Tạo trang" />
			</div>
				</form>

	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!-- END Create Category Modal -->

	@foreach($pages as $page)
	<!-- Modal -->
	<div class="modal fade" id="edit-{{ $page->id }}" data-id="{{ $page->id }}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Cập nhật {{ $page->title }}</h4>
			</div>
			<form method="POST" action="{{ URL::to('admin/pages/update') . '/' . $page->id }}" accept-charset="UTF-8">
		    <div class="modal-body">
		      
		      	
					<ul>
			        <li>
			        	<label for="title">Tiêu đề</label>
	           			<input type="text" class="form-control" name="title" id="title" value="{{ $page->title }}" placeholder="Tiêu đề" />
			        </li>

			        <li>
			        	<label for="url">Đường dẫn</label>
	           			<input type="text" class="form-control" name="url" id="url" value="{{ $page->url }}" placeholder="Đường dẫn" />
			        </li>

			        <li>
		        		<label for="body">Nội dung</label>
	                	<p><textarea name="body" class="form-control" id="body edit-{{ $page->id }}" placeholder="Nội dung">{{ $page->body }}</textarea></p>   
		        	</li>

		        	<li>
			        	<label for="order">Thứ tự</label>
	           			<input type="text" class="form-control" name="order" id="order" value="{{ $page->order }}" placeholder="Thứ tự" />
			        </li>

			        <li>
						<label for="active">Trạng thái:</label>

						@if(isset($page->active))<?php $active = $page->active ?>@else<?php $active = 1 ?>@endif
						<div class="onoffswitch">
							{{ Form::checkbox('active', '', $active, array('class' => 'onoffswitch-checkbox', 'id' => 'active')) }}					   
						    <label class="onoffswitch-label" for="active">
						        <div class="onoffswitch-inner"></div>
						        <div class="onoffswitch-switch"></div>
						    </label>
						</div>
					</li>

					<li>
						<label for="show_in_menu">Hiển thị lên thanh menu:</label>

						@if(isset($page->show_in_menu))<?php $show_in_menu = $page->show_in_menu ?>@else<?php $show_in_menu = 1 ?>@endif
						<div class="onoffswitch">
							{{ Form::checkbox('show_in_menu', '', $show_in_menu, array('class' => 'onoffswitch-checkbox', 'id' => 'show_in_menu')) }}					   
						    <label class="onoffswitch-label" for="show_in_menu">
						        <div class="onoffswitch-inner"></div>
						        <div class="onoffswitch-switch"></div>
						    </label>
						</div>
					</li>

				</ul>
			</div><!-- .modal-body -->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
				<input type="submit" class="btn btn-color" value="Update Page" />
			</div>
			</form>

	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->



	@endforeach

<script type="text/javascript" src="{{ URL::to('/') }}/application/assets/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript">

	//attach_tiny_mce($('textarea'));

	$(document).ready(function(){
		$('.edit-media').click(function(){
			var target = $(this).data('target');
			console.log(target);
			tinymce.init({
				relative_urls: false,
			    selector: 'textarea'+target,
			    toolbar: "styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | preview media | forecolor backcolor ",
			    plugins: [
			         "advlist autolink link image code lists charmap print preview hr anchor pagebreak spellchecker code fullscreen",
			         "save table contextmenu directionality emoticons template paste textcolor code"
			   ],
			   menubar:false,
			 });
		});

		$(document).on('focusin', function(e) {
		    if ($(event.target).closest(".mce-window").length) {
		        e.stopImmediatePropagation();
		    }
		});
	});
	



	tinymce.init({
	    selector: 'textarea',
	    relative_urls: false,
	    toolbar: "styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | preview media | forecolor backcolor ",
	    plugins: [
	         "advlist autolink link image code lists charmap print preview hr anchor pagebreak spellchecker code fullscreen",
	         "save table contextmenu directionality emoticons template paste textcolor code"
	   ],
	   menubar:false,
	 });


</script>
