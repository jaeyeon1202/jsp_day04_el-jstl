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
	
	<c:set var="result" value="${dao.delete(session) }"/>
	
	<c:choose>
		<c:when test="${result==1 }">
			<c:remove var="session" scope="session"/>
			<script type="text/javascript">
				alert("삭제완료!");
				location.href="index.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("삭제실패");
				location.href="getInfo.jsp";
			</script>
		</c:otherwise>
	</c:choose>
	<c:import url="/quiz/default/footer.jsp"></c:import>
</body>
</html>