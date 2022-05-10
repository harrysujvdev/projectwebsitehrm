<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<style>
.blue-bg {
	background: none;
	background-color: none;
	transition: color 0.25s;
}

.brown-bg {
	background: none;
	background-color: none;
	transition: color 0.25s;
}

.dark-bg {
	background: none;
	background-color: none;
	transition: color 0.25s;
}

.green-bg {
	background: none;
	background-color: none;
	transition: color 0.25s;
}

.row {
	margin-left: 15px;
	margin-right: 15px;
}

.text-right {
	text-align: right;
	margin-right: 20px;
	font-size: 15px;
}

#bang1:hover, #bang2:hover, #bang3:hover, #bang4:hover, #bang5:hover,
	#bang6:hover, #bang7:hover, #bang8:hover {
	border: 1px solid #00c6d7;
	box-shadow: 0 10px 6px -6px #777;
	color: #00c6d7;
	font-size: 15px;
}

i:hover {
	color: #00c6d7;
}
</style>
<div class="row" style="padding-top: 12px">
	<div class="col-lg-12">
		<h3 class="page-header">
			<i class="fa fa-laptop"></i> Trang chủ
		</h3>
		<ol class="breadcrumb" style="background-color: rgba(0, 0, 0, 0.34);">
			<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
			<li><i class="fa fa-laptop"></i>Trang chủ</li>
		</ol>
	</div>
</div>

<security:authorize access="isAnonymous()">
	<c:redirect url="/dang-nhap?message=notlogin" />
</security:authorize>

<div class="row">
	<a href="<c:url value='/nhan-vien-chinh-thuc/danh-sach?page=1' />">
		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
			<div id="bang1" class="info-box dark-bg">
				<i class="fas fa-address-book"></i>
				<div class="title">Hồ Sơ Viên Chính Thức</div>
			</div>
		</div>
	</a>
	<!--/.col-->

	<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
		<a href="<c:url value='/nhan-vien-thuc-tap/danh-sach?page=1' />">
			<div id="bang2" class="info-box dark-bg">
				<i class="fas fa-address-book"></i>
				<div class="title">Hồ Sơ Nhân Viên Thực Tập</div>
			</div>
		</a>
		<!--/.info-box-->
	</div>
	<!--/.col-->

	<a href="#">
		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
			<div id="bang3" class="info-box dark-bg">
				<i class="far fa-clock"></i>
				<div class="title">Chế Độ Làm Việc Công Ty</div>
			</div>
			<!--/.info-box-->
		</div>
	</a> <a href="nhan-vien-thuc-tap/chinh-sua">
		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
			<div id="bang4" class="info-box dark-bg">
				<i class="fas fa-plus-square"></i>
				<div class="title">Thêm Nhân Viên Thực Tập</div>
			</div>
			<!--/.info-box-->
		</div>
	</a>


	<a href="<c:url value="bang-luong-nhan-vien/danh-sach?page=1" />">
		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
			<div id="bang5" class="info-box dark-bg">
				<i class="  fab fa-cc-amazon-pay"></i>
				<div class="title">Thanh Toán Lương Cho Nhân Viên</div>
			</div>
		</div>
	</a> <a href="<c:url value="/quan-ly-nhan-vien/them-ngay-nghi" />">
		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
			<div id="bang6" class="info-box dark-bg">
				<i class="fas fa-plus-square"></i>
				<div class="title">Thêm Nhân Viên Nghỉ Phép</div>
			</div>
		</div>
	</a> <a href="<c:url value="/nhan-vien-chinh-thuc/chinh-sua" />">
		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
			<div id="bang7" class="info-box dark-bg">
				<i class="fas fa-plus-square"></i>
				<div class="title">Thêm Nhân Viên Chính Thức</div>
			</div>
		</div>
	</a>
	<!-- <div style="margin-top: -170px; margin-left: 289px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div id="bang7" class="info-box dark-bg">
						<i class="far fa-clock"></i>
						<div class="count">??</div>
						<div class="title">???</div>
					</div>
					/.info-box
				</div> -->
	<!-- 		<div style="margin-top: -170px; margin-left: 585px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div id="bang8" class="info-box dark-bg">
						<i class="fas fa-umbrella-beach"></i>
						<div class="count"></div>
						<div class="title">Kỳ Nghỉ</div>
					</div>
				</div> -->

	<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
		<div id="bang8" class="info-box dark-bg">
			<i class=" fas fa-umbrella-beach"></i>
			<div class="count"></div>
			<div class="title">Kỳ Nghỉ</div>
		</div>
		<!--/.info-box-->
	</div>
</div>