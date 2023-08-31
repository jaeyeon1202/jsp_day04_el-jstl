<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	el03_scope.jsp <br>
	<%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	name : ${name } <br> <!-- pageScope랑 같은거,  -->
	<!-- 이름이 같을 때 가져오는 것은 범위가 가장 작은 것을 가져온다. -->
	page : ${pageScope.name }, <%=pageContext.getAttribute("name") %> <br>
	request : ${requestScope.name }  <br>
	session : ${sessionScope.name }, <%= session.getAttribute("name") %> <br>
	application : ${applicationScope.name } <br>
	<a href = "el03_result.jsp">result 이동</a>
</body>
</html>