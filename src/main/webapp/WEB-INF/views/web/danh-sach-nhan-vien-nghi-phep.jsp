<%@include file="/common/taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url var="APIurl" value="/api/dayoffAPI"/>
<c:url var="directtUrl" value="/quan-ly-nhan-vien/danh-sach-nhan-vien-nghi"/>
        <style>
            #bang
            {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }   

            #bang td, #customers th 
            {
                border: 1px solid #ddd;
                padding: 10px;
                font-size: 15px;
                text-align: center;
                color:  #b3ccff;
            }

            #bang trtd:nth-child(even){background-color: #e6ffff;}

            #bang tr:hover {background-color: 00061a;}



            #bang th
            {   
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: rgba(0, 0, 0, 0.34);
                color:  white;
                font-size: 15px;
                text-align: center;
            }
            .blue-bg
            {
                background: none;
                background-color: none;
            }
            .brown-bg
            {
                background: none;
                background-color: none;
            }
            .dark-bg
            {
                background: none;
                background-color: none;
            }
            .green-bg
            {
                background: none;
                background-color: none;
            }
            .fa-address-card
            {
                opacity: 0.7;
                margin-left: 415px;
                margin-bottom: 20px;
                background-color: rgba(0, 0, 0, 0);
                color: white;
                font-size: 30px;
                cursor: pointer;
                margin-top: 6px;
            }
            #Searchhhh
            {
                opacity: 0.7;
                margin-left: 69px;
                background-color: rgba(0, 0, 0, 0);
                color: white;
                font-size:17px;
                cursor: pointer;
            }
            .far , .fas 
            {
                color: white;
                transition: 0.7s ease;
            }
            .far:hover , .fas:hover
            {

                border-color: #00c6d7;
                box-shadow: 0 10px 6px -6px #777;
                color: #00c6d7;
            }
            .dlg-container
            {
                position:absolute;
                left:50%;
                top:30%;
                transform: translateX(-50%) translateY(-50%);
                width:400px;
                background:#fff;
                padding:10px;
                border:2px solid #ddd;
                box-shadow:1px 1px 5px 1px #ccc;
                border-radius:10px;
                opacity:1;
                transition:all 0.3 linear 0s;
                z-index: 2;
                display:none;
                background: rgba(0,0,0,0.2);
            }
            .dlg-container:hover
            {
                border:1px solid #00a0df;

            }

            .dlg-header
            {
                padding: 10px;
                font-weight: bold;
                background: rgba(0,0,0,0.5);
                color: #f6f7f8;
                border: 1px solid white;
                border-radius: 10px;

            }
            .dlg-body
            {
                padding:10px;
                line-height:30px;
                color: white;
            }
            .dlg-footer
            {
                text-align:center;
                padding : 3px 0;
            }
            .dlg-footer a
            {
                display:inline-block;
                width:100px;
                padding:5px 0;
                border-radius:10px;
                background: rgba(0,0,0,0.3);
                cursor : pointer;
                border: 1px solid;
                color: white;
                transition: 0.9s ease;
            }
            .dlg-footer a:active
            {
                box-shadow: inset 2px 2px 4px 0 #ccc;
                color:#666;
            }
            .freeze-layer
            {
                position: fixed;
                top: 0;
                left:0;
                width:100%;
                height:100%;
                background:rgba(0,0,0,0.9);
                z-index:1;
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
                                <li><i class="fa fa-home"></i><a href="indexAdmin.jsp">Home</a></li>
                                <li><i class="fa fa-laptop"></i>Danh Sách Nhân Viên Nghỉ Phép</li>
                            </ol>
                        </div>
                    </div>
                <div>
					<form action="#">
						<a href="#"><i class="far fa-address-card"> Danh Sách Nhân Viên Nghỉ Phép</i></a>
           				<input  style="color:white;opacity: 1.7;width:257px;border-radius:14px;background-color: rgba(0, 0, 0, 0);position: relative;padding-left: 38px;" type="text" placeholder="Có không giữ mất thì tìm" />
        		   		<i style="opacity:0.7;line-height: 51px;margin-left: -242px;" class="fas fa-search"></i>
   					</form>
                </div>
                <div class="clearfix"></div>
                <div>
                <form action="/quan-ly-nhan-vien/danh-sach-nhan-vien-nghi" id="formSubmit" method="get">
                    <table id="bang">
                         <tr>
                                <th>STT</th>
                                <th>Họ Và Tên</th>
                                <th>Ngày Sinh</th>
                                <th>Giới Tính</th>
                                <th>Số Điện Thoại</th>
                                <th>CMND/CCCD</th>
                                <th>Email</th>
                                <th>Lý do</th>
                                <th>Vị Trí</th>
                                <th>Loại Nghỉ</th>
                                <th>Số Ngày Nghỉ</th>
                                <th>Ngày bắt đầu nghỉ</th>
                                <th>Ngày Trở lại</th>
                                <th>
									<button id="btnDelete" type="button" onclick="warningBeforeDelete()" class="btn btn-info">
										<i class="fas fa-user-slash"> Xóa</i>
									</button>
								</th>
                            </tr>
						<c:if test="${not empty model.listResult}">
                        <c:forEach var="item" items="${model.listResult}" varStatus="temp">
                        <tr>
                            <td>${temp.count}</td>
                            <td>${item.fullname}</td>
                            <td>${item.birthday}</td>
                            <td>${item.gender}</td>
                            <td>${item.phone}</td>
                            <td>${item.passport}</td>
                            <td>${item.email}</td>
                            <td>${item.reason}</td>
                            <td>${item.location}</td>
                            <td>${item.furlough}</td>
                            <td>${item.numberdayoff}</td>
                            <td>${item.startday}</td>
                            <td>${item.dateback}</td>
                            <td>
								<div class="form-check">
								  	<input class="form-check-input" type="checkbox" value="${item.id}" id="checkbox_${item.id}">
								</div>
							</td>
                        </tr>
                        </c:forEach>
                        </c:if>
                        <c:if test="${empty model.listResult}">
                        	<tr>
                        		<td colspan="14">Không Có Nhân Viên Nghỉ Phép !</td>
                        	</tr>
                        </c:if>
                    </table>
                    	 <ul class="pagination" id="pagination"></ul>
					  	<input type="hidden" id="page" name="page"/>
               </form>
 </div>
<script>

<!-- Checkbok button -->
	var button = document.getElementById("btnDelete");
	button.disabled = true;
	$('input[type=checkbox]').on('change', function(){
		 button.disabled = false;
	})

	
	function deleteNew(data) {
	        $.ajax({
	            url: '${APIurl}',
	            type: 'DELETE',
	            contentType: 'application/json',
	            data: JSON.stringify(data),
	            success: function (result) {
	               window.location.href = "${directtUrl}?page=1&message=delete_success";
	            },
	            error: function (error) {
	            	window.location.href = "${directtUrl}?page=1&message=delete_error";
	            }
	        });
	    }
	     
</script>