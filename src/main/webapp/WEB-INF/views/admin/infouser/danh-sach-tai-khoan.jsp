<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			    <li class="breadcrumb-item" style="color: white;"><a href="<c:url value='/quan-tri/trang-chu' />">Trang chủ</a></li>
			    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Quản lý tài khoản</li>
			    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Danh sách tài khoản</li>
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
                	<h2 class="yoo-card-title">Danh sách tài khoản đã đăng ký</h2>
        		</div>
         	</div>
       	<div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
               
                
		                <table class="table" style="font-size: 16px;">
		                  <thead>
		                    <tr>
		                      <th scope="col">ID</th>
		                      <th scope="col">Tên tài khoản</th>
		                      <th scope="col">Chủ tài khoản</th>
		                      <th scope="col">CMND/CCCD</th>
		                      <th scope="col">Ngày đăng ký</th>
		                      <th scope="col">Trạng thái</th>
		                      <th scope="col">Công cụ</th>
		                    </tr>
		                  </thead>
		                  <tbody>
				             <c:forEach var="item" items="${model.listResult}">
				                    <tr>
				                    	<c:if test="${item.username != 'managerwebsite'}">
					                      <th scope="row">${item.id}</th>
					                      <td>${item.username}</td>
					                      <td>${item.fullname}</td>
					                      <td>${item.passport}</td>
					                      <td>${item.createddate}</td>
					                      <td>
					                      	<c:if test="${item.status == '1'}">
					                      		<span style="color: #3333ff;">
					                      			<i class="fas fa-unlock-alt"></i>
					                      			Đang hoạt động
					                      		</span>
					                      	</c:if>
					                      	<c:if test="${item.status == '2'}">
					                      		<span style="color: #ff3333;">
					                      			<i class="fas fa-lock"></i>
					                      			Ngừng hoạt động
					                      		</span>
					                      	</c:if>
					                      </td>
					                      <td>
					                      <form action="/updateStatus" method="POST">
						                      <c:if test="${item.status == '1'}">
						                      	<button type="submit" ripple="ripple" ripple-color="rgba(213, 0, 0, 0.7)" style="font-size: 14px;" class="btn btn-outline-danger" onclick="return confirm('Bạn có chắc chắn muốn khóa tài khoản ?')" >Disabled</button>
						                      	<input type="hidden" name="status" value="2">
						                      	<input type="hidden" name="id" value="${item.id}">
						                      </c:if>
						                      <c:if test="${item.status == '2'}">
						                      	<button type="submit" ripple="ripple" ripple-color="rgba(0, 200, 83, 0.7)" style="font-size: 14px;" class="btn btn-outline-success" onclick="return confirm('Bạn có chắc chắn muốn mở tài khoản ?')" >Enabled</button>
						                      	<input type="hidden" name="status" value="1">
						                      	<input type="hidden" name="id" value="${item.id}">
						                      </c:if>
					                      </form>
					                      </td>
				                      	</c:if>
				                    </tr>
				             </c:forEach>
		                  </tbody>
		                </table>
		                <ul class="pagination" id="pagination"></ul>
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
              </div>
            </div>
           </div>
         <div class="yoo-height-b30 yoo-height-lg-b30"></div> 
		</div>
	</div>
</div>

 