<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
        
        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse " style="padding-top: 2px">
                <!-- sidebar menu start-->
                <ul class="sidebar-menu">
                    <li class="active">
                        <a id="a" href="<c:url value="/trang-chu" />">
                            <i class="icon_house_alt"></i>
                            <span>Trang Chủ</span>
                        </a>
                    </li>
                    <li>
                        <a class="a" href="<c:url value='/nhan-vien-thuc-tap/danh-sach?page=1' />">
                            <i class="fas fa-child"></i>
                            <span>Quản Lý Thực Tập Sinh</span>
                        </a>
                    </li>
                    <li>
                        <a class="" href="<c:url value='/nhan-vien-chinh-thuc/danh-sach?page=1' />">
                            <i class="fas fa-users"></i>
                            <span>Quản Lý Nhân Viên Chính Thức</span>
                        </a>
                    </li>
                    <!-- <li>
                        <a class="" href="#">
                            <i class="fas fa-calendar-alt"></i>
                            <span>Quản Lý Kỷ Niệm Ngày Vào</span>
                        </a>
                    </li> -->
                    <li>
                        <a class="" href="<c:url value='/bang-luong-nhan-vien/danh-sach?page=1' />">
                            <i class="fas fa-file-invoice-dollar"></i>
                            <span>Danh Sách Tính Lương Nhân Viên</span>
                        </a>
                    </li>
                    <!-- <li>
                        <a class="" href="#">
                            <i style="margin-left:0px;" class="fas fa-birthday-cake"></i>
                            <span>Quản Lý Sinh Nhật</span>
                        </a>
                    </li> -->
                    <li>
                        <a class="" href="<c:url value='/quan-ly-nhan-vien/danh-sach-nhan-vien-nghi?page=1' />">
                            <i class="far fa-calendar-times"></i>
                            <span>Quản Lý Ngày Nghỉ</span>
                        </a>
                    </li>
                </ul>
            </div>
        </aside>