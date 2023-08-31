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
	
	<h3>회원가입</h3>
	
		<form action="register.jsp" method="post">
			아이디<input type="text" name="id" placeholder="id"> <br>
			비밀번호<input type="password" name="pwd" placeholder="pwd"> <br>
			이름<input type="text" name="name" placeholder="name"> <br>
			주소<input type="text" name="addr" placeholder="addr"> <br>
			전화번호<input type="text" name="tel" placeholder="tel"> <br>
			<input type="submit" value="회원가입">
		</form>
	
<c:import url="/quiz/default/footer.jsp"></c:import>
</body>
</html>