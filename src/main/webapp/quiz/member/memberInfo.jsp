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
	
	<c:if test="${session == null }">
		<script type="text/javascript">
			alert("로그인먼저!");
			location.href="login.jsp";
		</script>
	</c:if>
	
	<h3>회원 목록</h3>
	
	<table border="1">
		<tr>
			<th>이름</th> <th>주소</th> <th>전화번호</th>
		</tr>
		<c:forEach var="d" items="${dao.getList() }">
			<tr>
				<td><a href="getInfo.jsp?id=${session }">${d.name}</a></td>
				<td>${d.addr}</td>
				<td>${d.tel }</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<c:import url="/quiz/default/footer.jsp"/>
	
</body>
</html>