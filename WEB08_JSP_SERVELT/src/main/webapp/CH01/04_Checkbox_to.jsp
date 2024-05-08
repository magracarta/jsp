<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_Checkbox_to.jsp</title>
</head>
<body>
	<h2>04_Checkbox_to.jsp</h2>
	<hr>
	<%
		/* String items = request.getParameter("item"); */
		String [] items = request.getParameterValues("item");
		String gender = request.getParameter("gender");
		if(items == null){
			out.print("<h3>선택한 항목이 없습니다.</h3>");
		}else{
			out.print("<h3>당신이 선택한 항목은 아래와 같습니다.</h3>");
			for(String t : items){
				out.print("<h3>"+t+"</h3>");
				%>
					<p>상품 : <%=t %></p>
				<% 
			}
		} %>
<%-- 	선택한 아이템 : <%= items %><br> --%>
	성별 : <%= gender %>
</body>
</html>