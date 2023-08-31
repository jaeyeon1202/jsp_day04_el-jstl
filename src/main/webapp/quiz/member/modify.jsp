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
	
	<c:set var="result" value="${dao.modify(session, param.name, param.addr, param.tel) }"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("수정완료!");
				location.href="getInfo.jsp?id=${session}";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("수정실패");
				location.href="modiFrom.jsp?id=${session}";
			</script>
		</c:otherwise>
	</c:choose>	
	
</body>
</html>