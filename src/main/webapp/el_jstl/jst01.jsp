<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	jst01.jsp <br>
	<c:set var="num" value="값 지정" /><!-- 문자 형식으로 저장, var==변수 -->
	값 : ${num }
	<hr>
	<c:set var="id" value="abc"/>
	<c:if test="${id == 'abc' }">
		두 값은 값다 : ${id } <br>
	</c:if>
	
	<hr>
	
	<%
		String[] arr = {"111","222","333"};
	%>
	<c:set var="values" value="<%=arr %>" />
	<c:forEach var="i" begin="10" end="20" step="2"><!-- i:변수, 10부터 시작, 20까지, 2씩증가 -->
		${i }<!-- 10 12 14 16 18 20 -->
	</c:forEach>
	<hr>
	<c:forEach var="item" items="${values }"><!-- items: 배열 -->
		${item }
	</c:forEach>
	<%--
	<hr>
	<c:import url="el01.jsp"/>
	<c:redirect url="el02_login.jsp"/><!-- 현재 페이지는 보이지 않고 바로 redirect로  -->
	 --%>
	
	<c:set var="s_name" value="세션설정" scope="session"/> <br> <!-- scope:page,session,request, application -->
	<c:remove var="s_name111" scope="session"/>
	<a href="jstl02.jsp">jstl02로 이동</a> <br>
	
	<!-- c:if는 if 하나만 있다. else, else if 이런거 없어 -->
	
	<hr>
	<c:set var="nick">
		홍길동
	</c:set>
	<!-- when:else if, otherwise: else -->
	<c:choose>
		<c:when test="${nick == '홍길동' }">
			이름 : ${nick }
		</c:when>
		<c:when test="${nick != '홍길동' }">
			이름 : ${nick }
		</c:when>
		<c:otherwise>
			else 구분		
		</c:otherwise>
	</c:choose>
	
	<hr>
	<c:set var="n" value="100"/>
	<c:choose>
		<c:when test="${n>100 }">
			100보다 크다
		</c:when>
		<c:otherwise>
			else
		</c:otherwise>
	</c:choose>
	
	
	
	
	
	
	 
</body>
</html>