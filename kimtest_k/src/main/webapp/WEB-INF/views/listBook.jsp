<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>�������</h2>
	<table border="1" width="80%">
		<tr>
			<td>������ȣ</td>
			<td>������</td>
			<td>���ǻ�</td>
			<td>����</td>
		</tr>
		<c:forEach var="b" items="${blist }">
		<tr>
			<td>${b.bookno }</td>
			<td>${b.bookname }</td>
			<td>${b.publisher }</td>
			<td>${b.price }</td>
		</tr>
		</c:forEach>
		
	</table>
	
	
</body>
</html>