<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/quiz/default/header.jsp"></c:import>
	
	<h3>로그인 페이지 입니다.</h3>
	
	<form action="loginCheck.jsp" method="post" >
		<input type="text" name="id" placeholder="id"> <br>
		<input type="password" name="pwd" placeholder="pwd"> <br>
		<input type="submit" value="로그인">
		<a href="insert.jsp">회원가입</a>
	</form>
	
	
	<c:import url="/quiz/default/footer.jsp"></c:import>
</body>
</html>