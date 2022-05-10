<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api/internAPI"/>
<c:url var="insertUrl" value="/nhan-vien-thuc-tap/chinh-sua"/>
<c:url var="updateUrl" value="/nhan-vien-thuc-tap/danh-sach"/>
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
                    <form:form method="POST" id="formSubmit" modelAttribute="model">
                        <div>
                            <span>
                            	<form:input path="fullname" title="Họ và tên" placeholder="Họ và tên"/>
                            	<form:input path="phone" type="number" title="Số điện thoại" placeholder="Số Điện Thoại"/>
                             </span>
                        </div>
                        <div>
                            <span>
                                <span>
                                     <form:select path="gender">
                                    	<form:option value="" label="-- Giới tính --" />
                                    	<form:option cssStyle="color: #000099" value="Nam">Nam</form:option>
                                    	<form:option cssStyle="color: #000099" value="Nữ">Nữ</form:option>
                                    </form:select>
                                </span>
                                <form:input path="birthday" type="date"/>
	                            <form:label path="">Ngày sinh</form:label>
                               
                            </span>
                        </div>
                        <div>
                            <span>
                                <form:input path="nationality" title="Quốc tịch" placeholder="Quốc tịch"/>
                                <form:input path="ethnicity" title="Dân tộc" placeholder="Dân Tộc"/>
                             </span>
                        </div>
                        <div>
                            <span>
	                            <form:input path="passport" title="CMND / CCCD" type="number" placeholder="CMDN / CCCD"/>
	                            <form:input path="email" type="email" title="Địa chỉ email" placeholder="Email"/>
                             </span>
                        </div>
                         <div>
                            <span>
                            	<form:input path="degree" title="Trình độ đào tạo" placeholder="Trình độ đào tạo"/>
                            	<form:input path="specialized" title="Chuyên ngành học" placeholder="Chuyên ngành học"/>
                          	</span>
                        </div>
                        <div>
                            <span>	
                            	<form:input path="address" title="Địa chỉ thường trú" placeholder="Địa Chỉ Thường Trú"/>
                                <form:input path="practicetime" title="Thời gian thử việc" placeholder="Thời gian thử việc"/>
                             </span>
                        </div>
                        <div>
                            <span>
                            	<form:input path="startday" type="date"/>
	                            <form:label path="">Ngày bắt đầu</form:label>
	                            
	                            <form:input path="dateback" type="date"/>
	                            <form:label path="">Ngày kết thúc</form:label>
                             </span>
                        </div>
                       	<form:hidden path="id" id="newId"/>
                        <div>
                        	<c:if test="${not empty model.id}">
                        		<button type="button" class="btn btn-primary btn-lg btn-block" id="btnAddOrUpdateNew">Cập nhật danh sách</button>
                        	</c:if>
                        	<c:if test="${empty model.id}">
                        		<button type="button" class="btn btn-primary btn-lg btn-block" id="btnAddOrUpdateNew">Thêm nhân viên</button>
                        	</c:if>
                           
                        </div>
                </form:form>
<script>
    
	$('#btnAddOrUpdateNew').click(function (e) {
            e.preventDefault();
            var data = {};
            var formData = $('#formSubmit').serializeArray();
            $.each(formData, function (i, v) {
                data[""+v.name+""] = v.value;
            });
    	    var id = $('#newId').val();
    	    if (id == "") {
    	    	addNew(data);
    	    } else {
    	    	updateNew(data);
    	    }
      });
     
     function addNew(data) {
         $.ajax({
             url: '${APIurl}',
             type: 'POST',
             contentType: 'application/json',
             data: JSON.stringify(data),
             dataType: 'json',
             success: function (result) {
             	 window.location.href = "${insertUrl}?message=insertSuccess";
             },
             error: function (error) {
             	 window.location.href = "${insertUrl}?message=insertError"; 
             }
         });
     }
     function updateNew(data) {
         $.ajax({
             url: '${APIurl}',
             type: 'PUT',
             contentType: 'application/json',
             data: JSON.stringify(data),
             dataType: 'json',
             success: function (result) {
            	window.location.href = "${updateUrl}?page=1&message=updateSuccess";
             },
             error: function (error) {
             window.location.href = "${updateUrl}?page=1&message=updateError";
             }
         });
     }        
</script>