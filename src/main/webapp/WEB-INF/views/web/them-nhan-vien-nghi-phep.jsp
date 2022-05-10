<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api/dayoffAPI"/>
<c:url var="directtUrl" value="/quan-ly-nhan-vien/them-ngay-nghi"/>
        <style>
            #bang {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #bang td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #bang trtd:nth-child(even){background-color: #f2f2f2;}

            #bang tr:hover {background-color: #ddd;}

            #bang th
            {   
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: rgba(0, 0, 0, 0.34);
                color:  white;
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
            .fa-pen-nib
            {
                opacity: 0.7;
                margin-left: 415px;
                margin-bottom: 20px;
                background-color: rgba(0, 0, 0, 0);
                color: white;
                font-size: 30px;
                margin-top: 6px;
            }
            #Searchhhh
            {
                opacity: 0.7;
                margin-left: 178px;
                background-color: rgba(0, 0, 0, 0.34);
                color: white;
                font-size:17px;
                cursor: pointer;
            }
            select
            {
                opacity: 0.7;
                margin-left: 178px;
                background-color: rgba(0, 0, 0, 0.34);
                color: white;
                font-size:17px;
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
            input[type=text],input[type=email],input[type=submit],input[type=number],input[type=date]
            {
                opacity: 0.7;
                margin-left: 178px;
                background-color: rgba(0, 0, 0, 0.34);
                color: white;
                font-size:17px;
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
                position: relative;
            }
            input[type=text]:focus,input[type=email]:focus,input[type=submit]:focus,input[type=number]:focus,input[type=date]:focus
            {
                box-shadow: 0 1px 4px -1px #a8a8a8 inset, 0 1px rgba(255, 255, 255, 0.6), 0 0 11px rgba(70, 100, 200, 0.7);
                border-color: #059;
                width:350px;
            }
            button[type=button]
            {
            	margin-top: 15px;
            	margin-left: 481px;
            	width: 200px;
            	
            }
            
            label
            {
                opacity: 0.4;
                margin-left: 415px;
                margin-bottom: 20px;
                background-color: rgba(0, 0, 0, 0);
                color: white;
                font-size: 16px;
                margin-top: 6px;
                position: absolute;
                position: absolute;
                line-height: 64px;
                margin-left: -189px;
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
                                <h3 class="page-header"><i class="fa fa-laptop"></i>Tạo Hồ Sơ Nhân Viên</h3>
                                <ol class="breadcrumb" style="background-color: rgba(0, 0, 0, 0.34);">
                                    <li><i class="fa fa-home"></i><a href="<c:url value='/trang-chu' />">Home</a></li>
                                    <li><i class="fa fa-laptop"></i>Hồ Sơ Nhân Viên</li>
                                </ol>
                            </div>
                        </div>
                    <div>
                        <i class="fas fa-pen-nib">Điền Thông Tin Nhân Viên</i>
                    </div>
                    <div class="clearfix"></div>
                  <form:form id="formSubmit" method="POST">
                        <div>
                            <span>
                            	<input type="text" name="fullname" placeholder="Họ và tên" required />
                            	<input type="date" name="birthday" required />
	                            <label>Ngày sinh</label>
                            </span>
                        </div>
                        <div>
	                           <span>
	                                <span>
	                                    <select style="font-size: 17px;" name="gender">
	                                     	<option>-- Giới tính --</option>
	                                        <option value="Nam" style="color: #000099">Nam</option>
	                                        <option value="Nữ" style="color: #000099">Nữ</option>
	                                    </select>
	                                </span>
	                                <input type="text" name="passport" placeholder="CMND / CCCD" required />
	                           </span>
	                    </div>
	                    <div>
	                          <span>	
	                          	<input type="email" name="email" placeholder="Email" required />
	                            <input type="text" name="phone" placeholder="Số Điện Thoại" required />
	                          </span>
	                    </div>
	                    <div>
	                        <span>
	                          <input type="text" name="location" placeholder="Vị Trí Làm Việc" required />
	                           <input type="text" name="reason" placeholder="Lý Do Nghỉ Việc" required />
	                        </span>
	                   	</div>
	                   	<div>
	                            <span>
	                            	<input type="text" name="numberdayoff" placeholder="Số ngày nghỉ" required />
	                               <span>
	                                    <select style="font-size: 17px;" name="furlough">
	                                     	<option>-- Loại nghỉ --</option>
	                                        <option value="Phép năm" style="color: #000099">Phép năm</option>
	                                        <option value="Nghỉ riêng không lương" style="color: #000099">Nghỉ riêng không lương</option>
	                                    </select>
	                                </span>
	                            </span>
	                        </div>
                        <div>
                            <span>
                            	<input type="date" name="startday" required />
                            	<label>Ngày bắt đầu nghỉ</label>
                            	
                            	<input type="date" name="dateback" required />
                            	<label>Ngày trở lại làm</label>
                            </span>
                        </div>
	                        
	                        <div>
	                           <button type="button" class="btn btn-primary btn-lg btn-block" id="btnCreate">Thêm nhân viên</button>
	                        </div>
              </form:form>
              
<script>

$('#btnCreate').click(function (e) {
    e.preventDefault();
    var data = {};
    var formData = $('#formSubmit').serializeArray();
    $.each(formData, function (i, v) {
        data[""+v.name+""] = v.value;
    });
    	addNew(data);
});

function addNew(data) {
    $.ajax({
        url: '${APIurl}',
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(data),
        dataType: 'json',
        success: function (result) {
        	 window.location.href = "${directtUrl}?message=insertSuccess";
        },
        error: function (error) {
        	 window.location.href = "${directtUrl}?message=insertError"; 
        }
    });
}
</script>