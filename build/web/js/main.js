;
$(document).ready(function(){
    $('.sidenav').sidenav();
}); 
document.addEventListener("DOMContentLoaded", function(){
	$('.preloader-background').delay(500).fadeOut('slow');
	
	$('.preloader-wrapper')
		.delay(500)
		.fadeOut();
});

document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $('select').formSelect();
  });
      
