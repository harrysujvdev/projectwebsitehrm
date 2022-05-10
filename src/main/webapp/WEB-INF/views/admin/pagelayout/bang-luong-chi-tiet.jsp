<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			    <li class="breadcrumb-item" style="color: white;"><a href="<c:url value='/quam-tri/trang-chu' />">Trang chủ</a></li>
			    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Thống kê</li>
			    <li class="breadcrumb-item active" style="color: white;" aria-current="page">Danh sách lương</li>
			  </ol>
			</nav>
	</div>
</div>
<form action="/quan-tri/thong-ke/bang-luong-chi-tiet" id="formSubmit" method="get">
<div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="yoo-card yoo-style1">
            <div class="yoo-card-heading">
              	<div class="yoo-card-heading-left">
                	<h2 class="yoo-card-title">Danh sách trả lương nhân viên</h2>
        		</div>
         	</div>
         	
       	<div class="yoo-card-body">
              <div class="yoo-padd-lr-20">
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
		                <table class="table table-bordered">
			                  <thead>
			                    <tr>
			                      	<th>STT</th>
									<th>Họ và tên</th>
									<th>Ngày sinh</th>
									<th>SĐT</th>
									<th>Chuyên ngành</th>
									<th>Ngày công</th>
									<th>Ngày nghỉ</th>
									<th>Tăng ca</th>
									<th>Phụ cấp</th>
                                	<th>Lương cơ bản</th>
                                	<th>Lương chính thức</th>
			                    </tr>
			                  </thead>
			                  <tbody>
			              <c:if test="${not empty model.listResult}">
			                 <c:forEach var="item" items="${model.listResult}" varStatus="temp">
				                 <tr>
				                    <th scope="row">${temp.count}</th>
				                    <td>${item.fullname}</td>
									<td>${item.birthday}</td>
									<td>${item.phone}</td>
									<td>${item.payrates.namepay}</td>
									<td>${item.workingdays - item.numberdayoff} ngày</td>
									<td>${item.numberdayoff} ngày</td>
									<td>${item.overtime} ngày</td>
									<td>${item.subsidize}</td>
									<td>${item.payrates.salarybasic} vnđ</td>
									<c:if test="${not empty item.salaryofficial}">
										<td>${item.salaryofficial} vnđ</td>
									</c:if>
										<c:if test="${empty item.salaryofficial}">
										<td>Chưa TT Lương</td>
									</c:if>
									
				                 </tr>
								
	      					</c:forEach>
	      				</c:if>
		      				<c:if test="${empty model.listResult}">
								<tr>
									<td colspan="15">Danh Sách Bảng Lương Trống !</td>
								</tr>
							</c:if>
		                  </tbody>
		                </table>
                <div class="yoo-height-b20 yoo-height-lg-b20"></div>
              </div>
               			
            </div>
        </div>
		</div>
	</div>
</div>
 		 <nav aria-label="Page navigation" style="margin: 100px; margin-left: 28%;">
        	<ul class="pagination" id="pagination"></ul>
    	</nav>
	  	<input type="hidden" id="page" name="page"/>
</form>  