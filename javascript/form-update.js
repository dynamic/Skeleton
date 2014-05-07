$(document).ready(function(){
	$('input, textarea').each(function(){
		if($(this).hasClass('fullfield')){
			$(this).parent().parent().addClass('fullfield');
		}
	});
});