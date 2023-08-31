<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>result.jsp</h3>
	name : ${name } <br> 
	page : ${pageScope.name }, <%=pageContext.getAttribute("name") %> <br>
	request : ${requestScope.name }  <br>
	session : ${sessionScope.name }, <%= session.getAttribute("name") %> <br>
	application : ${applicationScope.name } <br>
</body>
</html>