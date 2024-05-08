<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05_Select.jsp</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String job = request.getParameter("job");
		String [] interests = request.getParameterValues("interest");
	%>
	<h1>당신이 선택한 직업 : <%= job %></h1>
	<br><br><br>
	
	<h1>당신이 선택한 관심분야</h1>
	<%
		if(interests == null) out.print("<h2>선택항목이 없습니다.</h2>");
		else {
			for(String x : interests){
					out.print(x+"<br>");
			}
		}
	%>
</body>
</html>