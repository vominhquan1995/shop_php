
      $('#list_cate').on('change',function(e){
        var type_id=e.target.value;
        if(type_id != 0 && type_id != -1)
        {
           $('#div_list').show();          
                $.get('/shop/list-cate?id='+type_id,function(data){
                    console.log(data);
                    $('#parentId').empty();
                    $.each(data,function(index,object){
                        $('#parentId').append('<option style="width=100%;" value='+ object.id+'>'+object.name+'</option>'); 
                    })
                });
            }else{
             $('#div_list').hide();
        }
      });
    
