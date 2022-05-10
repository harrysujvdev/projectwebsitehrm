<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang Chủ</title>

<!-- javascripts -->
<script src="<c:url value='/template/web/js/jquery.js' />"></script>
<script src="<c:url value='/template/web/js/jquery-ui-1.10.4.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/web/js/jquery-ui-1.9.2.custom.min.js' />"></script>
<!-- bootstrap -->
<script src="<c:url value='/template/web/js/bootstrap.min.js' />"></script>

<!-- nice scroll -->
<script src="<c:url value='/template/web/js/jquery.scrollTo.min.js' />"></script>
<script src="<c:url value='/template/web/js/jquery.nicescroll.js' />" type="text/javascript"></script>

<!-- charts scripts -->
<script src="<c:url value='/template/web/assets/jquery-knob/js/jquery.knob.js' />"></script>
<script src="<c:url value='/template/web/js/jquery.sparkline.js' />" type="text/javascript"></script>
<script src="<c:url value='/template/web/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js' />"></script>
<script src="<c:url value='/template/web/js/owl.carousel.js' />"></script>

<!-- jQuery full calendar -->
<script src="<c:url value='/template/web/js/fullcalendar.min.js' />"></script>

<!-- Full Google Calendar - Calendar -->
<script src="<c:url value='/template/web/assets/fullcalendar/fullcalendar/fullcalendar.js' />"></script>

<!--script for this page only-->
<script src="<c:url value='/template/web/js/calendar-custom.js' />"></script>
<script src="<c:url value='/template/web/js/jquery.rateit.min.js' />"></script>

<!-- custom select -->
<script src="<c:url value='/template/web/js/jquery.customSelect.min.js' />"></script>
<script src="<c:url value='/template/web/assets/chart-master/Chart.js' />"></script>

<!--custome script for all page-->
<script src="<c:url value='/template/web/js/scripts.js' />"></script>

<!-- custom script for this page-->
<script src="<c:url value='/template/web/js/sparkline-chart.js' />"></script>
<script src="<c:url value='/template/web/js/easy-pie-chart.js' />"></script>
<script src="<c:url value='/template/web/js/jquery-jvectormap-1.2.2.min.js' />"></script>
<script src="<c:url value='/template/web/js/jquery-jvectormap-world-mill-en.js' />"></script>
<script src="<c:url value='/template/web/js/xcharts.min.js' />"></script>
<script src="<c:url value='/template/web/js/jquery.autosize.min.js' />"></script>
<script src="<c:url value='/template/web/js/jquery.placeholder.min.js' />"></script>
<script src="<c:url value='/template/web/js/gdp-data.js' />"></script>
<script src="<c:url value='/template/web/js/morris.min.js' />"></script>
<script src="<c:url value='/template/web/js/sparklines.js' />"></script>
<script src="<c:url value='/template/web/js/charts.js' />"></script>
<script src="<c:url value='/template/web/js/jquery.slimscroll.min.js' />"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"  />

<!-- bootstrap css-->
<link href="<c:url value='/template/web/cssAdmin/bootstrap.min.css' />" rel="stylesheet">

<!-- bootstrap theme -->
<link href="<c:url value='/template/web/cssAdmin/bootstrap-theme.css' />" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="<c:url value='/template/web/cssAdmin/elegant-icons-style.css' />" rel="stylesheet" />
<link href="<c:url value='/template/web/cssAdmin/font-awesome.min.css' />" rel="stylesheet" />

<!-- full calendar css-->
<link href="<c:url value='/template/web/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css' />"
	rel="stylesheet" />
<link href="<c:url value='/template/web/assets/fullcalendar/fullcalendar/fullcalendar.css' />"
	rel="stylesheet" />

<!-- easy pie chart-->
<link href="<c:url value='/template/web/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css' />"
	rel="stylesheet" type="text/css" media="screen" />

<!-- owl carousel -->
<link rel="stylesheet" href="<c:url value='/template/web/cssAdmin/owl.carousel.css' />" type="text/css">
<link href="<c:url value='/template/web/cssAdmin/jquery-jvectormap-1.2.2.css' />" rel="stylesheet">

<!-- Custom styles -->
<link rel="stylesheet" href="<c:url value='/template/web/cssAdmin/fullcalendar.css' />">
<link href="<c:url value='/template/web/cssAdmin/widgets.css' />" rel="stylesheet">
<link href="<c:url value='/template/web/cssAdmin/style.css' />" rel="stylesheet">
<link href="<c:url value='/template/web/cssAdmin/style-responsive.css' />" rel="stylesheet" />
<link href="<c:url value='/template/web/cssAdmin/xcharts.min.css' />" rel=" stylesheet">
<link href="<c:url value='/template/web/cssAdmin/jquery-ui-1.10.4.min.css' />' />" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" />
<link rel="stylesheet" href="fontawesome-free-5.15.1-web/css/all.min.css" />
<!--loadpage  -->
<link href="<c:url value='/template/loadpage/style.css' />" rel="stylesheet">
<%-- <script type="text/javascript" src="<c:url value='/template/web/js/prevent.js' />"></script> --%>
<!--popup  -->
<link href="<c:url value='/template/popup/style.css' />" rel="stylesheet">

 <!-- javascripts -->
<script src="<c:url value='/template/web/js/jquery.js' />"></script>
<script src="<c:url value='/template/web/js/jquery-ui-1.10.4.min.js' />"></script>
<script src="<c:url value='/template/web/js/jquery-1.8.3.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/web/js/jquery-ui-1.9.2.custom.min.js' />"></script>
<script src="https://kit.fontawesome.com/2e4db5f4b4.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"  />
	
	<!-- jQuery-Bootstrap-Twbs-Pagination -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
	
	<!-- sweetalert -->
	<script type="text/javascript" src="<c:url value='/template/sweetalert/sweetalert2.all.min.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/template/sweetalert/sweetalert2.min.css' />" />

	<!-- anwesomplete -->
	<link rel="stylesheet" href="<c:url value='/template/anwesomplete/awesomplete.css' />" />
	<script src="<c:url value='/template/anwesomplete/awesomplete.js'/>"></script>
</head>
<body style="background: url(<c:url value='/template/web/images/bann.jpg' />) fixed; font-size: 12px !important;" onload="thongbaopopup()">
<div id='status'></div>
<div id='loader'></div>

<section id="container" class="">
		<%@include file="/common/web/header.jsp" %>
		<%@include file="/common/web/menu.jsp" %>
		
		<section id="main-content" style="padding-top: 22px;">
			<section class="wrapper">
			<dec:body />
			</section>
		</section>
</section>

	  <!-- load page -->
	   <script>
		    $(window).bind("load", function() {
		        jQuery("#status").fadeOut();
		        jQuery("#loader").fadeOut();
		    });
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
		
		<!-- popup -->
		  <script>
            function thongbaopopup(){
            document.getElementById("tbpopup-1").classList.toggle("active");
            }
        </script>
        
   <!-- Btn delete -->
   <script>
	   function warningBeforeDelete() {
	   	const swalWithBootstrapButtons = Swal.mixin({
	   		  customClass: {
	   		    confirmButton: 'btn btn-success',
	   		    cancelButton: 'btn btn-danger'
	   		  },
	   		  buttonsStyling: false
	   		})
	
	   		swalWithBootstrapButtons.fire({
	   		  title: 'Xác nhận xóa ?',
	   		  text: "Bạn có chắc chắn muốn xóa nhân viên !",
	   		  icon: 'warning',
	   		  showCancelButton: true,
	   		  confirmButtonText: 'Xác nhận',
	   		  cancelButtonText: 'Hủy bỏ',
	   		  reverseButtons: true
	   		}).then((result) => {
	   		  if (result.isConfirmed) {
	   			  var ids = $('tbody input[type=checkbox]:checked').map(function () {
	   		            return $(this).val();
	   		        }).get();
	   				deleteNew(ids);
	   		    swalWithBootstrapButtons.fire('Deleted!','Your file has been deleted.','success'
	   		    )
	   		  } else if (
	   		    result.dismiss === Swal.DismissReason.cancel
	   		  ) {
	   		    swalWithBootstrapButtons.fire('Cancelled','Your imaginary file is safe :)','error'
	   		    )
	   		  }
	   		})
	    }		
   </script>
   
</body>
</html>

