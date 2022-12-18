<%@page import="login.StudentDTO"%>
<%@page import="login.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String STU_NO = (String)session.getAttribute("UserId");
LoginDAO dao = new LoginDAO(application);
StudentDTO stdto = dao.getInfo(STU_NO);
dao.close();
%>
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
</head>
<body>
	<jsp:include page="./top.jsp" />
	<h2>학생정보</h2>
	<div class="container" style="background-color:rgb(224, 224, 224);">
		<ul style="list-style:none; float:left;">
			<li>학번</li>
			<li>학년</li>
			<li>이름</li>
		</ul>
		<ul style="list-style:none; float:left;">
			<li><input type="text" value="<%= stdto.getSTU_NO() %>" style="padding:4px;" disabled /></li>
			<li><input type="text" value="<%= stdto.getSTU_YEAR() %>" style="padding:4px;" disabled /></li>
			<li><input type="text" value="<%= stdto.getSTU_NAME() %>" style="padding:4px;" disabled /></li>
		</ul>
		<ul style="list-style:none; text-align:right; float:left;">
			<li>학년</li>
			<li>반</li>
			<li>이메일</li>
		</ul>
		<ul style="list-style:none; float:left;">
			<li><input type="text" value="<%= stdto.getSTU_YEAR() %>" style="padding:4px;" disabled /></li>
			<li><input type="text" value="<%= stdto.getSTU_CLASS() %>" style="padding:4px;" disabled /></li>
			<li><input type="text" value="<%= stdto.getSTU_NAME() %>" style="padding:4px;" /></li>
		</ul>
	</div>

</body>
</html>