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
	<jsp:useBean id="dao" class="quiz.memberDAO"></jsp:useBean>
	
	<c:set var="result" value="${ dao.loginCheck(param.id, param.pwd) }"/>

	
	<c:if test="${result ==1 }">
		<c:set var="session" value="${param.id }" scope="session" />
		<script type="text/javascript">
			alert("로그인성공~");
			location.href="successLogin.jsp"
		</script>
	</c:if>
	<c:choose>
		<c:when test="${result == 0 }">
			<script type="text/javascript">
				alert("아이디가 틀렸거나 없음ㅠㅠ");
				location.href="login.jsp"
			</script>
		</c:when>
		<c:when test="${result==2 }">
			<script type="text/javascript">
				alert("비밀번호 틀림ㅠ");
				location.href="login.jsp";
			</script>
		</c:when>
	</c:choose>
</body>
</html>