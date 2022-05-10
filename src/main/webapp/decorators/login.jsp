<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Đăng nhập</title>
	<link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="<c:url value='/template/login/assets/images/im2.jpg' />">
    <link rel="stylesheet" href="<c:url value='/template/login/assets/css/bootstrap.min.css' />">
	<link rel="stylesheet" href="<c:url value='/template/login/assets/css/style.css' />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<!--Popup -->
	<link href="<c:url value='/template/popup/style.css' />" rel="stylesheet">
	<style type="text/css">
		 .form-cover span{
			   position: absolute;
			   right: 24px;
			   top: 69%;
			   transform: translateY(-50%);
			   font-size: 20px;
			   color: #8e44ad;
			   cursor: pointer;
			   display: none;
		 }
		input:valid ~ span{
   				display: block;
 		}
 		.form-cover span i.hide-btn::before{
   			content: "\f070";
 		}
	</style>
</head>
<body onload="thongbaopopup()">
	<div class="container-fluid bg-login">
	<dec:body/>
	</div>
	
	<!-- Popup -->
	<script>
            function thongbaopopup(){
            document.getElementById("tbpopup-1").classList.toggle("active");
            }
     </script>
     
     <!-- Show Password -->
     <script>
     	const upass = document.querySelector("input[type=password]");
		const showBtn = document.querySelector("span i");
     	showBtn.onclick = (()=>{
	    		if(upass.type == "password"){
	    			upass.type = "text";
	    			showBtn.classList.add("hide-btn");
	    		} else {
	    			upass.type = "password";
	    			showBtn.classList.remove("hide-btn");
	    		}
     		});
    	
     </script>
</body>
</html>