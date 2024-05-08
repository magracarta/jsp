<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>053_LoginOk.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
%>
	<h2><%= name %>(<%=id%>) 로그인하셨습니다.</h2>
</body>
</html>