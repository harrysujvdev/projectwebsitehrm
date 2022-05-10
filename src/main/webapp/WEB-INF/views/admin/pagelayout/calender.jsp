<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<security:authorize access="isAnonymous()">
	<c:redirect url="/dang-nhap?message=notlogin" />
</security:authorize>
 <div class="container">
      <div class="yoo-uikits-heading">
         <nav aria-label="breadcrumb" style="background-color: #d300ff5c;">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item" style="color: white;"><a href="<c:url value='/quan-tri/trang-chu' />">Trang chủ</a></li>
		    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Lịch trình</li>
		  </ol>
		</nav>
      </div>
 </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="yoo-card yoo-style1 yoo-calendar-card">
            <div class="yoo-card-heading">
              <div class="yoo-card-heading-left">
                <h2 class="yoo-card-title">lịch trình</h2>
              </div>
              <div class="yoo-card-heading-right">
                <a href="#" class="yoo-btn yoo-add-btn"><ion-icon name="add-outline"></ion-icon>Add New Task</a>
              </div>
            </div>
            <div class="yoo-card-body">
              <div id="yoo-calendar"></div>
            </div>
          </div>
        </div>
        <!-- .col -->
      </div>
    </div>
    