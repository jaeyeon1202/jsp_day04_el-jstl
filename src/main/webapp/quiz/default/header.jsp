<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">CARE LAB</h1>
	<hr>
	
	<p align="right">
		<a href="/day04/quiz/member/index.jsp">HOME</a>
		<a href="/day04/quiz/member/memberInfo.jsp">회원 정보</a>
		
		<c:choose>
			<c:when test="${session != null }">
				<a href="/day04/quiz/member/logout.jsp">로그아웃</a>
			</c:when>
			<c:otherwise >
				<a href="/day04/quiz/member/login.jsp">로그인</a>
			</c:otherwise>
		</c:choose>
	</p>
	
	<hr>
</body>
</html>