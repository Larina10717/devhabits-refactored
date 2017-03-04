$(document).ready(function(){


  $('.dropdown-menu').click('li a', function(){
        var selected_item = $(this).val();
            $('#skill').text(selected_item);

    });



});
