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
	<jsp:useBean id="dao" class="quiz.memberDAO"/>
	
	<c:set var="result" value="${dao.register(param.id, param.pwd, param.name, param.addr, param.tel) }"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("회원가입 성공!");
				location.href="login.jsp"
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("회원가입 실패ㅠ");
				location.href="insert.jsp";
			</script>
		</c:otherwise>
	</c:choose>
	

</body>
</html>