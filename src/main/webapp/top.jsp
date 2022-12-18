<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<div class="col-12">
    <nav class="navbar navbar-expand-sm navbar-secondary" style="background-color:rgb(224, 224, 224);">
        <ul class="navbar-nav ms-3 ">
            <li class="nav-item">
                <a class="nav-link" href="StudentInfo.jsp">학생정보</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">대여목록</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">도서목록</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">이달의새책</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">희망도서신청</a>
            </li>
            <%
		    if (session.getAttribute("UserId") == null) {
    		%>
	        <li class="nav-item">
                <a class="nav-link" href="LoginForm.jsp"><i class='bi bi-box-arrow-in-right'
                    style='font-size:20px'></i> 로그인</a>
            </li>
            <%
		    } else { 
		    %>
            <li class="nav-item">
                <a class="nav-link" href="Logout.jsp"><i class='bi bi-box-arrow-right'
                    style='font-size:20px'></i>로그아웃</a>
            <%
		    } 
		    %>
            </li>
        </ul>
    </nav>
</div>