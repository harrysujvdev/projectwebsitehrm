<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
 	<c:if test="${not empty message}">
				<div class="tbpopup" id="tbpopup-1">
		        <div class="tboverlay"></div>
		        <div class="tbcontent">
		        <div class="tbclose-btn" onclick="thongbaopopup()">&times;</div>
		        <div style="font-size:25px;font-weight:bold; color: #000000">Thông báo !</div>
		        <p style="font-size: 20px;color: #000000;">${message}</p>
		        </div>
		        </div>
	</c:if>
<security:authorize access="isAnonymous()">
	<c:redirect url="/dang-nhap?message=notlogin" />
</security:authorize>
	<div class="container">
		<div class="yoo-uikits-heading">
			  <nav aria-label="breadcrumb" style="background-color: #d300ff5c;">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="<c:url value='/quan-tri/trang-chu' />">Trang chủ</a></li>
				    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Quản lý tài khoản</li>
				    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Đăng ký tài khoản</li>
				  </ol>
				</nav>
		</div>
	</div>
 <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-body">
              <div class="tab-content">
                <div class="yoo-profile-setting-container">
                  <div class="yoo-height-b45 yoo-height-lg-b45"></div>
                  <div class="yoo-flex">
                    <div class="yoo-profile-setting-heading">
                      <h2 class="yoo-profile-setting-title">Đăng ký Tài Khoản</h2>
                      <div class="yoo-profile-setting-subtitle">Vui lòng điền đầy đủ thông tin vào các trường bên dưới !</div>
                    </div>
                  </div>
                  <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                  
          <form action="/createUser" method="POST">
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Tên đăng nhập</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" name="username" placeholder="Tên tài khoản" required>
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Mật khẩu</label>
                    <div class="input-group form-group-sm">
                      <input type="password" class="form-control" name="password" placeholder="Mật khẩu" required>
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Họ và tên</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" name="fullname" placeholder="Họ và tên" required>
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Số điện thoại</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" required>
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Email</label>
                    <div class="input-group form-group-sm">
                      <input type="email" class="form-control" name="email" placeholder="Email" required">
                    </div>
                  </div>
                   <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">CMDD/CCCD</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" name="passport" placeholder="CMDD/CCCD" required">
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Mạng xã hội</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" name="socialnetwork" placeholder="mạng xã hội">
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Loại tài khoản</label>
                    <div class="input-group form-group-sm">
                      <div class="yoo-select">
                        <select id="inputState" class="form-control" name="roleid">
                       	  <option>-- Loại tài khoản --</option>
                          <option value="1">Quản trị</option>
                          <option value="2">Người dùng</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Cấp quyền tài khoản</label>
                    <div class="input-group form-group-sm">
                      <div class="yoo-select">
                        <select id="inputState" class="form-control" name="status">
                       	  <option>-- Cho phép hoạt động --</option>
                          <option value="1">Enable</option>
                          <option value="2">Disable</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="yoo-height-b60 yoo-height-lg-b60"></div>
                </div><!-- .yoo-profile-setting-container -->
                <hr>
                <div class="yoo-profile-setting-container">
                  <div class="yoo-height-b55 yoo-height-lg-b55"></div>
                  <div class="yoo-flex">
                    <div class="yoo-profile-setting-heading">
                      <h2 class="yoo-profile-setting-title">Thỏa thuận chính sách</h2>
                      <div class="yoo-profile-setting-subtitle">Thêm tất cả các chi tiết của bạn và điền chính xác. Bạn cũng có thể thay đổi cài đặt sau..</div>
                    </div>
                  </div>
                  <div class="yoo-height-b15 yoo-height-lg-b15"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label">Xác minh Đặt lại Mật</label>
                    <div class="yoo-form-field yoo-color1">
                      <div class="yoo-checkbox-wrap yoo-style1 yoo-color1">
                        <div class="custom-control custom-checkbox">
                          <input class="custom-control-input" type="checkbox" id="gridCheck2">
                          <label class="custom-control-label" for="gridCheck2">
                            <span class="custom-control-shadow"></span>Yêu cầu thông tin cá nhân để đặt lại mật khẩu của bạn.
                          </label>
                        </div>
                      </div>
                      <div class="yoo-form-field-note">Để tăng cường bảo mật, điều này yêu cầu bạn xác nhận email hoặc số điện thoại trong khi đặt lại mật khẩu.</div>
                    </div>
                  </div>
                  <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label">Mốc thời gian</label>
                    <div class="yoo-form-field yoo-color1">
                      <div class="custom-control custom-checkbox">
                        <input class="custom-control-input" type="checkbox" id="gridCheck3">
                        <label class="custom-control-label" for="gridCheck3">
                          <span class="custom-control-shadow"></span>Hiển thị nội dung tốt nhất trước tiên
                        </label>
                      </div>
                      <div class="yoo-form-field-note">Các bài đăng mà bạn có khả năng quan tâm nhất sẽ hiển thị đầu tiên trong dòng thời gian của bạn..</div>
                    </div>
                  </div>
                  <div class="yoo-height-b55 yoo-height-lg-b55"></div>
                </div><!-- .yoo-profile-setting-container -->
                <hr>
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                <div class="yoo-profile-btn-group yoo-style1" ripple-color="rgba(0, 122, 255, 0.7)" >
                  <button type="submit" id="btnCreate" ripple="ripple" ripple-color="#fff" class="btn btn-primary">Thêm tài khoản</button>
                </div>
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
      </form>
              </div>
            </div>
          </div>
        </div>
        <!-- .col -->
      </div>
    </div>