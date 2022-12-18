<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">    
</head>
<body>
<div class="container row" style="float:none; margin:0 auto; position:relative; top:200px;" >
    <div class="col-md-7" style="float:none; margin:0 auto;">
	    <%
  	    if (session.getAttribute("UserId") == null) {
	    %>
	    <script>
		    function validateForm(form) {
		        if (!form.user_id.value) {
		            alert("아이디를 입력하세요.");
		            form.user_id.focus();
		            return false;
		        }
		        if (form.user_pw.value == "") {
		            alert("패스워드를 입력하세요.");
		            form.user_pw.focus();
		            return false;
		        }
		    }
    	</script>
    	
	    <form action="LoginProcess.jsp" method="post" name="loginFrm"
	        onsubmit="return validateForm(this);" style="text-align:center;">		        
			<div class="input-group" style="width:250px; margin:10px;">
			    <span class="input-group-text"><i class="bi bi-person-fill" style="opacity:50%;"></i></span>
			    <input type="text" name="user_id" class="form-control" placeholder="Username">
			</div>				
			<div class="input-group" style="width:250px; margin:10px;">
			    <span class="input-group-text"><i class="bi bi-key-fill" style="opacity:50%;"></i></span>
			    <input type="password" name="user_pw" class="form-control" placeholder="password">
			</div>
			<div style="color: red; font-size: 0.8em;"> 
		        <%= request.getAttribute("LoginErrMsg") == null ?
		                "" : request.getAttribute("LoginErrMsg") %>
		        <script>document.write();</script>
    		</div>
    		<div style="text-align:center;">
				<input type="button" class="btn text-light" value="가입" style="margin:10px; background-color:rgb(231, 76, 70); width:80px;" />
				<input type="submit" class="btn text-light" value="로그인" style="margin:10px; background-color:rgb(52, 152, 219); width:80px;" />
				<input type="button" class="btn text-light" value="비밀번호찾기" style="margin:10px; background-color:rgb(46, 204, 113); letter-spacing:-2px; width:120px;" /> <br />
				<span style="color:red;">사이트 최초 접속시 가입을 해주세요.</span>
			</div>		        
	    </form>
	    <%
	    } else { 
	    %>
	        <%= session.getAttribute("UserName") %> 회원님, 로그인하셨습니다.<br>
	        <a href="<% session.invalidate(); %>">로그아웃</a> 
	    <%
	    }
	    %>
	</div>    
</div>
</body>
</html>