<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<security:authorize access="isAnonymous()">
	<c:redirect url="/dang-nhap?message=notlogin" />
</security:authorize>
<div class="container">
	<div class="yoo-uikits-heading">
		  <nav aria-label="breadcrumb" style="background-color: #d300ff5c;">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item" style="color: white;"><a href="<c:url value='/quan-tri/trang-chu' />">Trang chủ</a></li>
			    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Hình ảnh công ty</li>
			  </ol>
			</nav>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="yoo-card yoo-style1">
				<div class="yoo-card-heading">
					<div class="yoo-card-heading-left">
						<h2 class="yoo-card-title">Slides only</h2>
					</div>
				</div>
				<div class="yoo-card-body">
		<div class="yoo-padd-lr-20 yoo-alert-wrap">
			<div class="yoo-height-b20 yoo-height-lg-b20"></div>
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1" class=""></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2" class=""></li>
                  </ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100"
							src="<c:url value='/template/admin/assets/imgplayout/cong-ty-apple-2.jpg' />"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="<c:url value='/template/admin/assets/imgplayout/ab2.jpg' />"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="<c:url value='/template/admin/assets/imgplayout/ap3.jpg' />"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    				<i class="material-icons"></i>
    				<span class="sr-only">Previous</span>
  				</a>
  				<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    				<ion-icon name="chevron-forward" role="img" class="md hydrated" aria-label="chevron forward"></ion-icon>
    				<span class="sr-only">Next</span>
  				</a>
			</div>
		</div>
		</div>
			</div>
		</div>
	</div>
</div>
