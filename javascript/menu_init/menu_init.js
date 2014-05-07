$(document).ready(function(){
	var clickers = '#mobile-nav-click,#mobile-nav-anchor';
	var clicker1 = '#mobile-nav-click';
	var clicker2 = '#mobile-nav-anchor';
	var subNav = '.mobilemenulist';
	
	var trackingClass = 1 + Math.floor(Math.random() * 6);
	trackingClass = 'nav-tracking-class-'+trackingClass;
	
	/*split each click to fix issue between li click and anchor click*/
	$(clicker1).on('click', function(e){
		if($(clicker1).hasClass(trackingClass)&&$(clicker2).hasClass(trackingClass)){
			//$(subNav).slideUp();
			$(subNav).hide();
			$(clicker1).removeClass(trackingClass);
			$(clicker2).removeClass(trackingClass);
		}else{
			//$(subNav).slideDown();
			$(subNav).show();
			$(clicker1).addClass(trackingClass);
			$(clicker2).addClass(trackingClass);
		}
	});
	
	$(clicker2).on('click', function(e){
		e.preventDefault();
		if($(clicker1).hasClass(trackingClass)&&$(e).hasClass(trackingClass)){
			//$(subNav).slideUp();
			$(subNav).hide();
			$(clicker1).removeClass(trackingClass);
			$(e).removeClass(trackingClass);
		}else{
			//$(subNav).slideDown();
			$(subNav).show();
			$(clicker1).addClass(trackingClass);
			$(e).addClass(trackingClass);
		}
	});

});