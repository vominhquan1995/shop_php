
$(document).ready(function() {
	$(".alert").delay(3000).slideUp();
    $(".notifyjs-corner").hide();
    $(".add_to_cart").on("click",function(){
      var id = $(this).attr("data-id");
      var ten_trang = $("#ten_trang").val();
   		if(ten_trang == 'chi_tiet'){
   			var qty = $('#qty').val();
   		}else{
   			var qty = 1;
   		}
      $.ajax({
        url : 'addtocart/'+id + '/' + qty,
        dataType : 'html',
        success: function(result){
			if(result){
				 $(".notifyjs-corner").fadeIn("fast").delay(3000).fadeOut();
         		 $(".item_cart").html(result+" Sản phẩm");
				}
        	}
      	});

    });
	$(".item-remove").on("click",function(){
		var id = $(this).attr("data-id");
		 $.ajax({
			url : 'xoa-cart/'+id,
			dataType : 'html',
			success: function(result){
				if(result){
						window.location = 'gio-hang';
					}
				}
		});
	});
	$(".update_cart").on("click",function(){
		var id = $(this).attr("data-id");
		var qty = $(".item_cart_"+id).val();
		//alert(qty);
		 $.ajax({
			url : 'update-cart/'+id+'/'+qty,
			dataType : 'html',
			success: function(result){
				if(result){
						window.location = 'gio-hang';
					}
				}
		});
	});
});