$(document).ready(function() {
    $('.product-item-name').on('mouseover', function() {
         $('.full_title').show();
          
    });
   $('.product-item-name').on('mouseout', function() {
        $('.full_title').hide();
    });
});