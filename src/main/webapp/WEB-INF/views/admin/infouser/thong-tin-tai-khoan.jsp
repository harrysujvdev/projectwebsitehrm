<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/common/taglib.jsp"%>
	

<div class="container">
	<div class="yoo-uikits-heading">
		  <nav aria-label="breadcrumb" style="background-color: #d300ff5c;">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="<c:url value='/quan-tri/trang-chu' />">Trang chủ</a></li>
			    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Quản lý tài khoản</li>
			    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Thông tin tài khoản</li>
			  </ol>
			</nav>
	</div>
</div>
<security:authorize access="isAnonymous()">
	<c:redirect url="/dang-nhap?message=notlogin" />
</security:authorize>
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
                      <h2 class="yoo-profile-setting-title">Hồ Sơ Tài Khoản</h2>
                      <div class="yoo-profile-setting-subtitle"></div>
                    </div>
                  </div>
                  <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Ảnh hồ sơ</label>
                    <div class="yoo-form-field">
                      <div class="yoo-setting-profile-pic">
                        <img src="<c:url value='/template/admin/assets/avatar/h1.png' />" alt="">
                      </div>
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Chủ tài khoản</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" value="${model.fullname}">
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Số điện thoại</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" value="${model.phone}">
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Email</label>
                    <div class="input-group form-group-sm">
                      <input type="email" class="form-control" value="${model.email}">
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">CMND/CCCD</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" value="${model.passport}">
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Mạng xã hội</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" value="${model.socialnetwork}">
                    </div>
                  </div>
                  <div class="yoo-height-b20 yoo-height-lg-b20"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Quốc gia</label>
                    <div class="input-group form-group-sm">
                      <div class="yoo-select">
                        <select id="inputState" class="form-control">
                          <option>Việt Nam</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Múi giờ</label>
                    <div class="input-group form-group-sm">
                      <div class="yoo-select">
                        <select id="inputState" class="form-control">
                          <option>Việt Nam (GMT+7)</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="yoo-height-b25 yoo-height-lg-b25"></div>
                  <div class="yoo-form-field-wrap yoo-style1">
                    <label class="yoo-form-field-label yoo-type1">Website</label>
                    <div class="input-group form-group-sm">
                      <input type="text" class="form-control" placeholder="websitehrm@" aria-label="Recipient's username" aria-describedby="basic-addon2">
                      <div class="input-group-append">
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
                <div class="yoo-profile-btn-group yoo-style1">
                  <a href="#" class="yoo-profile-btn yoo-style1 yoo-color1">Update Now</a>
                  <a href="#" class="yoo-profile-btn yoo-style1 yoo-color2">Next</a>
                </div>
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
              </div>
            </div>
          </div>
        </div>
        <!-- .col -->
      </div>
    </div>