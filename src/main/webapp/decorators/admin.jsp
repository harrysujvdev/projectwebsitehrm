<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
	<!-- Meta Tags -->
	<meta charset="utf-8" />
	<meta http-equiv="x-ua-compatible" content="ie=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="author" content="YooKits" />
	<!-- Page Title -->
	<title>Trang quản trị</title>
	<!-- Favicon Icon -->
	<link rel="icon" href="<c:url value='/template/admin/assets/img/iconadmin.png' />">
	<!-- CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
	<script src="<c:url value='/template/admin/assets/js/jquery-1.12.4.min.js' />"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	<link rel='stylesheet' type="text/css" href="<c:url value='/template/admin/assets/css/fullcalendar.min.css' />" />
	<link rel='stylesheet' type="text/css" href="<c:url value='/template/admin/assets/css/fullcalendar.print.min.css' />" media="print" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/admin/assets/css/jqvmap.min.css' />" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/admin/assets/css/iDashboard.css' />" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/admin/assets/css/quill.snow.css' />" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/admin/assets/css/jquery.dataTables.min.css' />" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
	<!--popup  -->
	<link href="<c:url value='/template/popup/style.css' />" rel="stylesheet">
	<!--loadpage  -->
	<link href="<c:url value='/template/loadpage/style.css' />" rel="stylesheet">
	
	<!-- jQuery-Bootstrap-Twbs-Pagination -->
	<script type="text/javascript" src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
	
</head>
<body class="yoo-fixed-bg" style="background-image: url(/template/admin/assets/imgplayout/background-admin.jpg);"  onload="thongbaopopup()">
<div id='status'></div>
<div id='loader'></div> 
	<div class="yoo-height-b60 yoo-height-lg-b60"></div>
	<%@include file="/common/admin/header.jsp"%>
	<div class="yoo-sidebarheader-toggle">
		<div class="yoo-button-bar1"></div>
		<div class="yoo-button-bar2"></div>
		<div class="yoo-button-bar3"></div>
	</div>
	<%@include file="/common/admin/menu.jsp"%>
	<div class="yoo-content yoo-style1">
    	<div class="yoo-height-b30 yoo-height-lg-b30"></div>
    	<dec:body />
    	<div class="yoo-height-b30 yoo-height-lg-b30"></div>
    	 <%@include file="/common/admin/footer.jsp"%>
    </div>
    
		<script>
            function thongbaopopup(){
            document.getElementById("tbpopup-1").classList.toggle("active");
            }
        </script>
        
	<!-- Pagination -->
		<script>
			$(function () {
				var totalPages = ${model.totalPage};
				var currenPage = ${model.page};
			    window.pagObj = $('#pagination').twbsPagination({
			        totalPages: totalPages,
			        visiblePages: 5,
			        startPage: currenPage,
			        onPageClick: function (event, page) {
			        	if (currenPage != page) {
			        		$('#page').val(page);
			        		$('#formSubmit').submit();
						}
			        }
			    });
			});

	 </script>
	 
		<!-- Required Scripts -->
		  <script src="<c:url value='/template/admin/assets/js/bootstrap.bundle.min.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/smooth-scrollbar.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/moment.min.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/fullcalendar.min.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/apexcharts.min.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/apexcharts.initialize.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/svg-maps/jquery.vmap.min.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/svg-maps/jquery.vmap.usa.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/svg-maps/jquery.vmap.main.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/jquery.dataTables.min.js' />"></script>
		  <script src="<c:url value='/template/admin/assets/js/iDashboard.js' />"></script>
		  <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
		  
	<!-- Load page -->	  
  	<script>
	    //<![CDATA[
	    $(window).bind("load", function() {
	        jQuery("#status").fadeOut();
	        jQuery("#loader").fadeOut();
	    });
	    //]]>
	</script> 
	
	<!-- Click Page -->
   	<script src="https://cdn.jsdelivr.net/mojs/0.265.6/mo.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/mojs-player/0.43.15/mojs-player.min.js"></script>
    <script>
	    const OPTS = {
	      fill: 'none',
	      radius: 25,
	      strokeWidth: { 50: 0 },
	      scale: { 0: 1 },
	      angle: { 'rand(-35, -70)': 0 },
	      duration: 500,
	      left: 0, top: 0,
	      easing: 'cubic.out'
	    };
	
	
	    const circle1 = new mojs.Shape({
	      ...OPTS,
	      stroke: 'cyan'
	    });
	
	
	    const circle2 = new mojs.Shape({
	      ...OPTS,
	      radius: { 0: 15 },
	      strokeWidth: { 30: 0 },
	      stroke: 'magenta',
	      delay: 'rand(75, 150)'
	    });
	
	
	    document.addEventListener('click', function (e) {
	
	      circle1.
	        tune({ x: e.pageX, y: e.pageY }).
	        replay();
	
	      circle2.
	        tune({ x: e.pageX, y: e.pageY }).
	        replay();
	
	    });
  </script>
</body>
</html>