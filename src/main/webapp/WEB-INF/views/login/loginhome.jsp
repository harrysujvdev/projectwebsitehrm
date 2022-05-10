<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:if test="${not empty message}">
	<div class="tbpopup" id="tbpopup-1">
		<div class="tboverlay"></div>
		<div class="tbcontent">
			<div class="tbclose-btn" onclick="thongbaopopup()">&times;</div>
			<div style="font-size: 30px; font-weight: bold; color: #ff0000">Warning !</div>
			<p style="font-size: 20px; color: #ff0000;">${message}</p>
		</div>
	</div>
</c:if>
<div class="container">
	<div class="row">
		<div class="col-lg-9 col-md-12 login-card">
			<div class="row">
				<div class="col-md-5 detail-part">
					<h1 style="font-family: Monotype Corsiva; font-size: 45px;" >Website HRM</h1>
					<p style="font-size: 22px;">
						Vui lòng sử dụng thông tin đăng nhập của bạn để đăng nhập. Nếu bạn
						chưa phải là thành viên, vui lòng liên hệ admin để <a style="color: blue"
							href="<c:url value="/dang-nhap?message=signfaill" />">Đăng
							ký.</a>
					</p>
				<p style="margin-top: 180px">© Bản quyền thuộc về lê văn sự.</p>
				</div>
				<div class="col-md-7 logn-part">
					<div class="row">
						<div class="col-lg-10 col-md-12 mx-auto">
							<div class="logo-cover">
								<img
									src="<c:url value='/template/login/assets/images/loginnow.jpg' />" alt="">
							</div>
							<form action="j_spring_security_check" method="POST">
								<div class="form-cover">
									<h6>Đăng nhập</h6>
									<input placeholder="Tên đăng nhập" type="text" name="j_username" class="form-control" required>
									<input Placeholder="Mật khẩu" id="ippass" type="password" name="j_password" class="form-control" required>
									<span class="show-btn"><i class="fas fa-eye"></i></span>
									<div class="row form-footer">
										<div class="col-md-6 forget-paswd">
											<input type="checkbox" required>
											<label style="font-size: 18px;">Đồng ý <a href="https://luatbaotin.com/siteterms/DIEU-KHOAN-SU-DUNG-WEBSITE.html" target="_blank">điều khoản</a></label>
										</div>
										<div class="col-md-6 forget-paswd">
											<a style="margin-left: 35px; font-size: 18px;" href="<c:url value='/dang-nhap/quen-mat-khau' />">Quên mật khẩu ?</a>
										</div>
									</div>
										<div class="col-md-6 button-div">
											<button type="submit" style="font-size: 21px;" class="btn btn-primary">Đăng nhập</button>
										</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
