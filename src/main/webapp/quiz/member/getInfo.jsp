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
	<jsp:useBean id="dao" class="quiz.memberDAO"/>
	
	<h3>개인정보</h3>
	<c:set var="dto" value="${dao.getInfo(session) }" />
	아이디 : ${dto.id } <br>
	비밀번호 : ${dto.pwd }<br>
	이름 : ${dto.name }<br>
	주소 : ${dto.addr }<br>
	전화번호 : ${dto.tel }<br>
	<button type="button" onclick="location.href='modiForm.jsp?id=${session}'">수정</button>
	<button type="button" onclick="location.href='delete.jsp?id=${session}'">삭제</button>
	
	
	<c:import url="/quiz/default/footer.jsp"></c:import>
</body>
</html>