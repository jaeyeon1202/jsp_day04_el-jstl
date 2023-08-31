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
	<c:import url="/quiz/default/header.jsp"/>
	<jsp:useBean id="dao" class="quiz.memberDAO"/>
	
	<c:set var="m" value="${dao.getInfo(session) }"/>
	
	<h3>수정페이지</h3>
		<form action="modify.jsp" method="post">
			<input type="hidden" name="id" value="${m.id }">  <br>
			<input type="text" name="name" placeholder="${m.name }"><br>
			<input type="text" name="addr" placeholder="${m.addr }"><br>
			<input type="text" name="tel" placeholder="${m.tel }"><br>
			<input type="submit" value="완료" >
			<button type="button" onclick="location.href='getInfo.jsp'">취소</button>
		</form>
	
	<c:import url="/quiz/default/footer.jsp"/>
</body>
</html>