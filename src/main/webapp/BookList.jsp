<%@page import="model1.book.BookDTO"%>
<%@page import="model1.book.BookDAO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
BookDAO dao = new BookDAO(application);
Map<String, Object> param = new HashMap<String, Object>();
String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if (searchWord != null) {
    param.put("searchField", searchField);
    param.put("searchWord", searchWord);
}
int totalCount = dao.selectCount(param);  
List<BookDTO> bookLists = dao.selectList(param);
dao.close();  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dd</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
    <jsp:include page="./top.jsp" />  

    <h2>목록 보기(List)</h2>
    <form method="get">  
    <table border="1" width="90%">
    <tr>
        <td align="right">
            <select name="searchField"> 
                <option value="title">제목</option> 
                <option value="content">내용</option>
            </select>
            <input type="text" name="searchWord" />
            <input type="submit" value="검색하기" />
        </td>
    </tr>   
    </table>
    </form>
    <table width="90%">
        <tr>
            <th width="10%">No.</th>
            <th width="40%">제목</th>
            <th width="10%">장르</th>
            <th width="10%">저자</th>
            <th width="10%">출판사</th>
            <th width="10%">발행일</th>
            <th width="10%">대여상태</th>
        </tr>
<%
if (bookLists.isEmpty()) {
%>
        <tr>
            <td colspan="7" align="center">
                등록된 서적이 없습니다.
            </td>
        </tr>
<%
}
else {
    int virtualNum = 0;  
    for (BookDTO dto : bookLists)
    {
        virtualNum++;  
%>
<tr align="center">
    <td><%= virtualNum %></td>
    <td align="left"> 
        <a href="View.jsp?num=<%= dto.getBOOK_CODE() %>">
        	<%= dto.getBOOK_TITLE() %></a> 
    </td>
    <td align="center"></td>
    <td align="center"><%= dto.getBOOK_AUTHOR() %></td>
    <td align="center"><%= dto.getPUBLISHER() %></td>  
    <td align="center"><%= dto.getPUBLISH_DATE() %></td>  
    <td align="center"></td>  
</tr>
<%
    }
}
%>
    </table>
    <table border="1" width="90%">
        <tr align="right">
            <td><button type="button" onclick="location.href='Write.jsp';">글쓰기
                </button></td>
        </tr>
    </table>
</body>
</html>
