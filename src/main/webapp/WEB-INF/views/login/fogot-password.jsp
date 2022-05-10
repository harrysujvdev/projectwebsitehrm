<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:if test="${not empty message}">
	<div class="tbpopup" id="tbpopup-1">
		<div class="tboverlay"></div>
		<div class="tbcontent">
			<div class="tbclose-btn" onclick="thongbaopopup()">&times;</div>
			<div style="font-size: 30px; font-weight: bold; color: #ff0000">Warning
				!</div>
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
					<p style="font-size: 20px;">
						Vui lòng nhập chính xác thông tin để tiến hành khôi phục mật khẩu. Nếu đã có mật khẩu, bạn có thể 
						<a style="color: blue" href="<c:url value="/dang-nhap" />">Đăng nhập.</a>
					</p>
				<p style="margin-top: 216px">© Bản quyền thuộc về lê văn sự.</p>
				</div>
				<div class="col-md-7 logn-part">
					<div class="row">
						<div class="col-lg-10 col-md-12 mx-auto">
							<div class="logo-cover">
								<img
									src="<c:url value='/template/login/assets/images/password-reset.jpg' />"
									alt="">
							</div>
							<form action="/fogot" method="POST">
								<div class="form-cover">
									<h6>Tạo mật khẩu</h6>
									<input placeholder="Tên đăng nhập" type="text" name="username" class="form-control" required>
									<input Placeholder="CMND/CCCD" type="number" name="ipassport" class="form-control" required>
									<input Placeholder="Mật khẩu mới" type="password" name="ipassword" class="form-control" required>
									<input Placeholder="Xác nhận mật khẩu mới" type="password" name="rtpassword" class="form-control" required>
										<div class="col-md-6 button-div">
											<button style="margin-top: 5px;" type="submit" class="btn btn-primary">Cập nhật</button>
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