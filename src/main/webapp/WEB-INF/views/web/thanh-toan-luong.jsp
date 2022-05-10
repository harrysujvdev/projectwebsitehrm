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
	color:  #b3ccff;
	font-size: 14px;
	text-align: center;
}

#bang trtd:nth-child(even) {
	background-color: #f2f2f2;
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
	text-align: center;
	font-size: 15px;
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

.fa-temperature-high {
	opacity: 0.7;
	margin-left: 415px;
	margin-bottom: 20px;
	background-color: rgba(0, 0, 0, 0);
	color: white;
	font-size: 30px;
	margin-top: 6px;
}

#Searchhhh {
	opacity: 0.7;
	margin-left: 178px;
	background-color: rgba(0, 0, 0, 0);
	color: white;
	font-size: 17px;
	cursor: pointer;
}
input[type=number] {
	background-color: rgba(0, 0, 0, 0);
	border-radius: 6px;
	color: #f2ffff;
}
input[type=text] {
	background-color: rgba(0, 0, 0, 0);
	border-radius: 6px;
	color: #f2ffff;
}

input[type=submit] {
	background-color: rgba(0, 0, 0, 0);
	border-radius: 6px;
	color: #f2ffff;
}
.pagination{
	margin-left: 465px;
	margin-top: 270px;
	font-size: 18px;
}
#bang2{
	margin-top: 405px;
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
						<h3 class="page-header">
							<i class="fa fa-laptop"></i>Hồ Sơ Nhân Viên
						</h3>
						<ol class="breadcrumb"
							style="background-color: rgba(0, 0, 0, 0.34);">
							<li><i class="fa fa-home"></i><a href="indexAdmin.jsp">Home</a></li>
							<li><i class="fa fa-laptop"></i>Hồ Sơ Nhân Viên</li>
						</ol>
					</div>
				</div>

			<div>
				<i style="line-height: 51px; margin-left: 327px;"
					class="fas fa-money-check-alt fa-3x"> Thanh Toán Lương Nhân
					Viên</i> <span id="Searchhhh"><a href=""><i
						style="opacity: 0.7; line-height: 51px; margin-left: 13px;"
						class="fas fa-search"></i></a><input
					style="color: white; opacity: 0.7; width: 257px; border-radius: 14px; background-color: rgba(0, 0, 0, 0); position: absolute; padding-left: 16px; margin-top: 23px;"
					type="text" placeholder="Tìm Kiếm Theo Tên" /></span>
			</div>
			<div class="clearfix"></div>
			<div>
				<table id="bang">
					<tr>
						<th>Họ Và Tên</th>
						<th>Ngày Sinh</th>
						<th>Giới Tính</th>
						<th>Số Điện Thoại</th>
						<th>CMND/CCCD</th>
						<th>Vị Trí</th>
						<th>Chuyên ngành</th>
						<th>Lương Cơ Bản</th>
					</tr>
					<tr>
                        <td>${model.fullname}</td>
                        <td>${model.birthday}</td>
                        <td>${model.gender}</td>
						<td>${model.phone}</td>
						<td>${model.passport}</td>
						<td>${model.location}</td>
						<td>${model.payrates.namepay}</td>
						<td>${model.payrates.salarybasic}</td>
					</tr>
				</table>
							<hr width="40%" size="10px" align="center" />
		<form action="/paySalary" method="POST">
				<table id="bang" style="margin-top: 30px;">
					<tr>
						<th style="background-color: #000033; font-size: 15px;" colspan="15">BẢNG TÍNH LƯƠNG</th>
					</tr>
					<tr>
						<td style="font-size: 15px;">
							<i class="fas fa-coins"> Nhập số ngày nghỉ của nhân viên (ngày / tháng)</i> 
						</td>
						<td colspan="15" style="font-size: 20px;">
							<input type="number" name="numberdayoff" required placeholder="Nhập Số">
						</td>
					</tr>
					<tr>
						<td style="font-size: 15px;">
							<i class="fas fa-chart-line"> Nhập số ngày tăng ca (ngày / tháng)</i> 
						</td>
						<td colspan="15" style="font-size: 20px;">
							<input type="number" name="overtime" required placeholder="Nhập Số">
						</td>
					</tr>
					<tr>
						<td style="font-size: 15px;">
							<i class="fas fa-hand-holding-usd"> Nhập số tiền phụ cấp cho nhân viên (vnđ)</i> 
						</td>
						<td colspan="15" style="font-size: 20px;">
							<input type="number" name="subsidize" required placeholder="Nhập Số">
						</td>
						
					</tr>
					<tr>
						<td style="font-size: 30px;">
							Tiến hành thanh toán
							<i class="fas fa-angle-double-right"></i>
							<i class="fas fa-angle-double-right"></i>
						</td>
						<td colspan="15" style="font-size: 20px;">
							<input type="hidden" name="id" value="${model.id}">
							<input type="hidden" name="salarybasic" value="${model.payrates.salarybasic}">
							<input type="hidden" name="workingdays" value="${model.workingdays}">
							<input type="submit" formaction="/paySalary" value="Thanh Toán">
						</td>
					</tr>
			</table>
	</form>
</div>
