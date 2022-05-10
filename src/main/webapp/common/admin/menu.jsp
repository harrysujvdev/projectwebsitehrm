<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<div class="yoo-sidebarheader">
    <div class="yoo-add">
      <div class="yoo-add-in">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.034593774582!2d106.67139011476426!3d10.808662392299675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ea67f377f2f%3A0x224ab06fa9b9a9d5!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIMSQ4bqhaSBWaeG7h3QgU8OgaSBHw7Ju!5e0!3m2!1svi!2s!4v1634011579901!5m2!1svi!2s" width="200" height="200" style="border:1;" allowfullscreen="" loading="lazy"></iframe>
        <a target="_blank" href="https://goo.gl/maps/1YVrxXWi3cs5KrWw8" class="yoo-add-btn btn btn-success btn-sm">Show Me</a>
      </div>
    </div>
    <div class="yoo-sidebarheader-in" data-scrollbar>
      <div class="yoo-sidebar-search">
        <form action="#" class="yoo-search yoo-style1 yoo-search-md">
          <input type="text" placeholder="Search..." class="yoo-search-input">
          <button class="yoo-search-submit"><ion-icon name="search"></ion-icon></button>
          <button class="yoo-voice-btn"><ion-icon name="mic"></ion-icon></button>
        </form>
      </div>
      <div class="yoo-sidebar-nav">
        <ul class="yoo-sidebar-nav-list yoo-mp0">
          <li class="active">
            <a href="<c:url value='/quan-tri/trang-chu' />">
              <span class="yoo-sidebar-link-title">
                <span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="home"></ion-icon></span>
                <span class="yoo-sidebar-link-text">Trang chủ</span>
              </span>
            </a>
          </li>
          <li>
            <a href="<c:url value="/quan-tri/thong-tin-tai-khoan" />">
              <span class="yoo-sidebar-link-title">
                <span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="receipt-sharp"></ion-icon></span>
                <span class="yoo-sidebar-link-text">Thông tin tài khoản</span>
              </span>
            </a>
          </li>
          <li>
            <a href="<c:url value='/quan-tri/thong-tin/lich-trinh' />">
              <span class="yoo-sidebar-link-title">
                <span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="calendar"></ion-icon></span>
                <span class="yoo-sidebar-link-text">Lịch trình</span>
              </span>
            </a>
          </li>
          <li class="yoo-sidebar-has-children">
            <a href="#" >
              <span class="yoo-sidebar-link-title">
                <span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="layers-sharp"></ion-icon></span>
                <span class="yoo-sidebar-link-text">Thống kê</span>
              </span>
            </a>
            <ul class="yoo-sidebar-nav-dropdown">
              <li>
                <a href="<c:url value='/quan-tri/thong-ke/bang-luong-chi-tiet?page=1' />" >
                  <span class="yoo-sidebar-link-title">
                  	<span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="list"></ion-icon></span>
                    <span class="yoo-sidebar-link-text">Bảng lương chi tiết</span>
                  </span>
                </a>
              </li>
              <%-- <li>
                <a href="<c:url value='/quan-tri/quan-ly-tai-khoan/dang-ky-tai-khoan' />" >
                  <span class="yoo-sidebar-link-title">
                  	<span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="duplicate"></ion-icon></span>
                    <span class="yoo-sidebar-link-text">Đăng ký tài khoản</span>
                  </span>
                </a>
              </li> --%>
            </ul>
          </li>
          <li class="yoo-sidebar-has-children">
            <a href="#" >
              <span class="yoo-sidebar-link-title">
                <span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="person-circle"></ion-icon></span>
                <span class="yoo-sidebar-link-text">Quản lý tài khoản</span>
              </span>
            </a>
           <ul class="yoo-sidebar-nav-dropdown">
              <li>
                <a href="<c:url value='/quan-tri/quan-ly-tai-khoan/danh-sach-tai-khoan' />" >
                  <span class="yoo-sidebar-link-title">
                  	<span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="list"></ion-icon></span>
                    <span class="yoo-sidebar-link-text">Danh sách tài khoản</span>
                  </span>
                </a>
              </li>
              <li>
                <a href="<c:url value='/quan-tri/quan-ly-tai-khoan/dang-ky-tai-khoan' />" >
                  <span class="yoo-sidebar-link-title">
                  	<span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="person-add-sharp"></ion-icon></span>
                    <span class="yoo-sidebar-link-text">Đăng ký tài khoản</span>
                  </span>
                </a>
              </li>
            </ul>
          </li>
       	<li class="yoo-sidebar-has-children">
            <a href="#" >
              <span class="yoo-sidebar-link-title">
                <span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="people-circle"></ion-icon></span>
                <span class="yoo-sidebar-link-text">Quản lý khách hàng</span>
              </span>
            </a>
           <ul class="yoo-sidebar-nav-dropdown">
              <li>
                <a href="<c:url value='/quan-tri/quan-ly-khach-hang/CSKH' />" >
                  <span class="yoo-sidebar-link-title">
                  	<span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="list"></ion-icon></span>
                    <span class="yoo-sidebar-link-text">Chăm sóc khách hàng</span>
                  </span>
                </a>
              </li>
            </ul>
          </li>
          <li>
           	<a href="<c:url value='/quan-tri/thong-tin/hinh-anh-cong-ty' />" >
                  <span class="yoo-sidebar-link-title">
                  	<span class="yoo-sidebar-link-icon yoo-style1"><ion-icon name="images"></ion-icon></span>
                    <span class="yoo-sidebar-link-text">Hình ảnh công ty</span>
                  </span>
                </a>
          </li>
        </ul><!-- .yoo-sidebar-nav-list -->
      </div>
    </div>
  </div>