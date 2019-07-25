
$(document).ready(function() { 
$('#form').submit(function(e) {
    var name = $('#name').val();
    var password = $('#password').val();
    var select = $('#select').val();
    if (select == 'select') {
    	e.preventDefault();
    	$('#select').after('<span class="error">Select your Role</span>');
    }
 
    $(".error").remove();
 
    if (name.length < 1) {
    	e.preventDefault();
      $('#name').after('<span class="error">This field is required</span>');
    }
    if (password.length < 1) {
    	e.preventDefault();
      $('#password').after('<span class="error">This field is required</span>');
    }
  });
 
});