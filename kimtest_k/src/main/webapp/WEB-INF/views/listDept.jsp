<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>부서목록</h2>
	<hr>
	<table border="1" width="80%">
	<tr>
		<td>부서번호</td>
		<td>부서명</td>
		<td>부서위치</td>
	</tr>
	
	<c:forEach var="d" items="${list }">
	
	<tr>
	<td>${d.deptno }</td>
	<td>${d.dname }</td>
	<td>${d.loc }</td>
	</tr>
	
	</c:forEach>
	
	</table>
</body>
</html>