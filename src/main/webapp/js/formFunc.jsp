<%@page import="login.LoginDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	String STU_NO = request.getParameter("STU_NO");
	LoginDAO dao = new LoginDAO(application);
	int stcheck = dao.stNoCheck(STU_NO);
	
	dao.close();
%>
<script type="text/javascript">
var stcheck = <%= stcheck %>;
function numcheck(){
	if(stcheck != 1){
		alert("존재하지 않는 학번입니다.");
		return false;
	}
}
</script>
