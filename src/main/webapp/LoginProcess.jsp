<%@page import="login.LoginDTO"%>
<%@page import="login.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userId = request.getParameter("user_id"); 
String userPwd = request.getParameter("user_pw");

LoginDAO dao = new LoginDAO(application);
LoginDTO loginDTO = dao.getLoginDTO(userId, userPwd);
dao.close();

if (loginDTO.getSTU_NO() != null) {
    session.setAttribute("UserId", loginDTO.getSTU_NO()); 
    session.setAttribute("UserName", loginDTO.getSTU_NO());
    response.sendRedirect("BookList.jsp");
}
else {
    request.setAttribute("LoginErrMsg", "없는 학번이거나 비밀번호가 틀렸습니다.");
    request.getRequestDispatcher("LoginForm.jsp")
		.forward(request, response);
}
%>