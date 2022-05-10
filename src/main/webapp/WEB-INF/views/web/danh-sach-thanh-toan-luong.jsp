<%@include file="/common/taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
#bang {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#bang td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
	font-size: 14px;
	text-align: center;
	color: #b3ccff;
}

#bang trtd:nth-child(even) {
	background-color: #e6ffff;
}

#bang tr:hover {
	background-color: #00061a;
}

#bang th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: rgba(0, 0, 0, 0.34);
	color: white;
	font-size: 15px;
	text-align: center;
	font-family: time new roman;
}

.blue-bg {
	background: none;
	background-color: none;
}

.brown-bg {
	background: none;
	background-color: none;
}

.dark-bg {
	background: none;
	background-color: none;
}

.green-bg {
	background: none;
	background-color: none;
}

.fa-address-card {
	opacity: 0.7;
	margin-left: 415px;
	margin-bottom: 20px;
	background-color: rgba(0, 0, 0, 0);
	color: white;
	font-size: 30px;
	cursor: pointer;
	margin-top: 6px;
}

#Searchhhh {
	opacity: 0.7;
	margin-left: 69px;
	background-color: rgba(0, 0, 0, 0);
	color: white;
	font-size: 17px;
	cursor: pointer;
}

.far, .fas {
	color: white;
	transition: 0.7s ease;
}

.far:hover, .fas:hover {
	border-color: #00c6d7;
	box-shadow: 0 10px 6px -6px #777;
	color: #00c6d7;
}

.dlg-container {
	position: absolute;
	left: 50%;
	top: 30%;
	transform: translateX(-50%) translateY(-50%);
	width: 400px;
	background: #fff;
	padding: 10px;
	border: 2px solid #ddd;
	box-shadow: 1px 1px 5px 1px #ccc;
	border-radius: 10px;
	opacity: 1;
	transition: all 0.3 linear 0s;
	z-index: 2;
	display: none;
	background: rgba(0, 0, 0, 0.2);
}

.dlg-container:hover {
	border: 1px solid #00a0df;
}

.dlg-header {
	padding: 10px;
	font-weight: bold;
	background: rgba(0, 0, 0, 0.5);
	color: #f6f7f8;
	border: 1px solid white;
	border-radius: 10px;
}

.dlg-body {
	padding: 10px;
	line-height: 30px;
	color: white;
}

.dlg-footer {
	text-align: center;
	padding: 3px 0;
}

.dlg-footer a {
	display: inline-block;
	width: 100px;
	padding: 5px 0;
	border-radius: 10px;
	background: rgba(0, 0, 0, 0.3);
	cursor: pointer;
	border: 1px solid;
	color: white;
	transition: 0.9s ease;
}

.dlg-footer a:active {
	box-shadow: inset 2px 2px 4px 0 #ccc;
	color: #666;
}

.freeze-layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.9);
	z-index: 1;
}

input[type=text], input[type=email], input[type=submit], input[type=number],
	input[type=date] {
	opacity: 0.7;
	margin-left: 178px;
	background-color: rgba(0, 0, 0, 0.34);
	color: white;
	font-size: 17px;
	padding-left: 17px;
	margin-top: 5px;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
	font-family: 'Oxygen', sans-serif;
	border: 2px solid #e4e9ec;
	border-radius: 4px;
	width: 311px;
	margin-top: 17px;
	transition: all 0.3s linear;
	border: 2px solid #1a80d6;
	font-family: time new roman;
	color: #898989;
	position: relative;
	margin-left: 12px;
}

.pagination{
	margin-left: 465px;
	margin-top: 270px;
	font-size: 18px;
}

select {
	opacity: 0.7;
	margin-left: 178px;
	background-color: rgba(0, 0, 0, 0.34);
	color: white;
	font-size: 17px;
	padding-left: 17px;
	margin-top: 5px;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
	font-family: 'Oxygen', sans-serif;
	border: 2px solid #e4e9ec;
	border-radius: 4px;
	padding: 9px;
	width: 311px;
	margin-top: 17px;
	transition: all 0.3s linear;
	border: 2px solid #1a80d6;
	font-family: 'Oxygen', sans-serif;
	color: #898989;
}
</style>
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
                        <div class="row">
                            <div class="col-lg-12">
                                <h3 class="page-header"><i class="fa fa-laptop"></i>Hồ Sơ Nhân Viên</h3>
                            <ol class="breadcrumb" style="background-color: rgba(0, 0, 0, 0.34);">
                                <li><i class="fa fa-home"></i><a href="/trang-chu">Home</a></li>
                                <li><i class="fa fa-laptop"></i>DANH SÁCH THANH TOÁN LƯƠNG NHÂN VIÊN</li>
                            </ol>
                        </div>
                    </div>
                <div>
                	<form action="#">
						<a href="#"><i class="far fa-address-card"> Danh Sách Thanh Toán Lương</i></a>
           				<input  style="color:white;opacity: 1.7;width:257px;border-radius:14px;background-color: rgba(0, 0, 0, 0);position: relative;padding-left: 38px;" type="text" placeholder="Có không giữ mất thì tìm" />
        		   		<i style="opacity:0.7;line-height: 51px;margin-left: -242px;" class="fas fa-search"></i>
   					</form>
                </div>
                <div class="clearfix"></div>
              <form action="/bang-luong-nhan-vien/danh-sach" id="formSubmit" method="get">
                    <table id="bang">
                         <tr>
                                <th>STT</th>
                                <th>Họ Và Tên</th>
                                <th>Ngày Sinh</th>
                                <th>Giới Tính</th>
                                <th>Địa Chỉ</th>
                                <th>Số Điện Thoại</th>
                                <th>Email</th>
                                <th>CMND/CCCD</th>
                              	<th>Chuyên Ngành</th>
								<th>Kinh Nghiệm</th>
								<th>Số Ngày Làm</th>
                                <th>Lương Cơ Bản</th>
                                <th>Công Cụ</th>
                            </tr>
                                             
                            
						<c:if test="${not empty model.listResult}">
                        <c:forEach var="item" items="${model.listResult}" varStatus="temp">
                       		 
                        <tr>
                            <td>${temp.count}</td>
                            <td>${item.fullname}</td>
                            <td>${item.birthday}</td>
                            <td>${item.gender}</td>
                            <td>${item.address}</td>
                            <td>${item.phone}</td>
                            <td>${item.email}</td>
                            <td>${item.passport}</td>
                            <td>${item.payrates.namepay}</td>
							<td>${item.experience}</td>
                            <td>${item.workingdays} ngày</td>
                            <td>${item.payrates.salarybasic} vnđ</td>
                            <td>
                            	<c:if test="${empty item.payrates.salarybasic}">
                            		<span style="font-size: 18px;">
										<a href="<c:url value='/bang-luong-nhan-vien/danh-sach?page=1&message=payerror' />">
											<i class="fas fa-wrench" style="text-align: center; border: 1px solid white; border-radius: 5px; margin-right: 2px;">
												Tính lương
											</i>
										</a>
									</span>
                            	</c:if>
                            	<c:if test="${not empty item.payrates.salarybasic}">
	                            	<span style="font-size: 18px;">
											<a href="<c:url value='/bang-luong-nhan-vien/thanh-toan-luong?id=${item.id}' />">
												<i class="fas fa-wrench" style="text-align: center; border: 1px solid white; border-radius: 5px; margin-right: 2px;">
													Tính lương
												</i>
											</a>
									</span>
								</c:if>
                            </td>
                        </tr>
                        </c:forEach>
                        </c:if>
                         <c:if test="${empty model.listResult}">
                        	<tr>
                        		<td colspan="14">Danh Sách Bảng Lương Trống !</td>
                        	</tr>
                        </c:if>
                    </table>
                  	<div class="text-right" style="margin-top: 10px;margin-right: 10px;">
						<a href="/bang-luong-nhan-vien/danh-sach?page=1&message=payDetails">XEM BẢNG LƯƠNG CHI TIẾT</a>
					</div>
                    <ul class="pagination" id="pagination"></ul>
                    <input type="hidden" id="page" name="page"/>
			</form>
					<c:if test="${not empty model.listResult}">
	                     <div style="margin-top: -307px;">
							<i style="font-size: 15px;" class="fas fa-wrench"> Nhập số ngày công của công ty trong tháng: </i> 
							<form action="/updateDay" method="POST">
									<input style="margin-left: 9px;" type="number" name="workingdays" required placeholder="Nhập Số">
									<button type="submit" class="btn btn-info">Cập nhật</button>
							</form>
						</div>
                    </c:if>
					