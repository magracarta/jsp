<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>073_main.jsp</title>
<%!
	public String sessionGet(HttpSession session, String key){
		Object attribute = session.getAttribute(key);
		return attribute == null ? "Attribute not found" : attribute.toString();
	} 
%>
</head>
<body>
<%
	if(session.getAttribute("loginUser") == null){
		response.sendRedirect("071_LoginForm.jsp");
	}else{
		out.print("<h2>"+session.getAttribute("loginUser")+"("+session.getAttribute("name")+")님이 로그인 하셨습니다.</h2>");
		out.print("<h2>"+sessionGet(session,"loginUser" )+"("+session.getAttribute("name")+")님이 로그인 하셨습니다.</h2>");
	}
%>
<input type="button" value="로그아웃" onclick="location.href='074_logout.jsp'"/>
</body>
</html>