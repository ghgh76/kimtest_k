<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>고객목록</h2>
	<hr>
	<table border="1" width="80%">
	<tr>
		<td>고객번호</td>
		<td>이름</td>
		<td>주소</td>
		<td>연락처</td>
		<td>주민등록번호</td>
		<td>이메일</td>
	</tr>
	
	<c:forEach var="c" items="${list }">
	
	<tr>
		<td>${c.custid }</td>
		<td>${c.name }</td>
		<td>${c.address }</td>
		<td>${c.phone }</td>
		<td>${c.jumin }</td>
		<td>${c.email }</td>
	</tr>
	
	</c:forEach>
	
	</table>
</body>
</html>