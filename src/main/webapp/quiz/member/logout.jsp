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

	
	<c:remove var="session" scope="session"/>
	<script type="text/javascript">
		alert("로그아웃");
		location.href="login.jsp";
	</script>
		
</body>
</html>