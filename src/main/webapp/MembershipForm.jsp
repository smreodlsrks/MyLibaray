<%@page import="login.LoginDTO"%>
<%@page import="java.util.List"%>
<%@page import="login.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="./js/jquery-3.6.1.js"></script>
    <style>
    * { font-family:sans-serif; }
    input { margin:8px;}
    </style>
</head>
<body>
	<script>
	function formValidate(){
		
		if(frm.STU_NO.value==""){
			alert("학번을 입력하세요.");
			frm.STU_NO.focus();
			return false;
		}
		 
		/* if(stcheck != 1){
			alert("존재하지 않는 학번입니다..");
			frm.STU_NO.focus();
			return false;
		} */
		
		if(frm.PASSWORD.value==""){
			alert("비밀번호를 입력하세요.");
			frm.PASSWORD.focus();
			return false;
		}
				
		if(frm.pwConfirm.value==""){
			alert("비밀번호확인을 입력하세요.");
			frm.pwConfirm.focus();
			return false;
		}
		
		if(frm.PASSWORD.value != frm.pwConfirm.value){
			alert("비밀번호와 비밀번호확인이 일치하지 않습니다.");
			frm.PASSWORD.focus();
			return false;
		}
		
		if(frm.EMAIL.value==""){
			alert("이메일을 입력하세요.");
			frm.EMAIL.focus();
			return false;
		}
		
		if(frm.EMAIL.value.indexOf("@") == -1){
			alert("적합한 이메일 양식이 아닙니다.");
			frm.EMAIL.focus();
			return false;
		}
	}
	
	$(function(){
		$("#stuNoChk").click(function(){
			$.ajax({
				url : './js/formFunc.jsp',  
				type : 'post', 
				dataType : "text", 
				success : function(data){
					console.log(data)
				} ,		 
				error : errorFunc ,
			});
			
			
			
		});
	});
	function successFunc(successData){
		console.log(successData);
	}
	function errorFunc(errorData){
		console.log(errData.state, errData.statusText); 
	}
	</script>
	
	<h2>가입화면</h2>
	<div class="container" style="width:700px; border:1px solid red;">
		<form action="membershipProcess" method="post" onsubmit="return formValidate();">
			<div>
				<ul style="list-style-type:none; float:right; position:relative; right:30px;">
					<li><input type="text" class="" name="STU_NO" placeholder="내용을 입력해주세요." style="width:200px" /><button type="button"  id="stuNoChk">검사</button></li>
					<li><input type="password" class="" name="PASSWORD" placeholder="내용을 입력해주세요." style="width:200px" /></li>
					<li><input type="password" class="" name="pwConfirm" placeholder="내용을 입력해주세요." style="width:200px" /></li>
					<li><input type="text" class="" name="EMAIL" placeholder="내용을 입력해주세요." style="width:200px" /></li>
				</ul>
				<ul style="list-style-type:none; float:right; text-align:right;">
					<li style="padding:11px;">학번
					
					</li>				
					<li style="padding:11px;">비밀번호</li>
					<li style="padding:11px;">비밀번호 확인</li>
					<li style="padding:11px;">이메일</li>
				</ul>
			</div>
			<div style="clear:both; text-align:center;">
				<input type="submit" id="submitt" class="btn text-light" style="background-color:rgb(52, 152, 219);" value="가입완료">
			</div>
		</form>
	</div>
	
	<script>
	var frm = document.forms[0];
	</script>
</body>
</html>  