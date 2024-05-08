<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06_Table.jsp</title>
</head>
<body>
	<table cellspacing="1" bgcolor="black" width ="500">
		<%
			int count = 5;
			//이 영역에 tr 한버 td 한버씩만 사용하여 5행 5열의 테이블을 완성하세요.
			for(int i =1; i<=count; i++){
				out.print("<tr bgcolor='white' height='80' align ='center'>");
				for(int j =1; j<=count; j++){
					out.print("<td>"+i+"행 "+j+"열</td>");
				}
				out.print("</tr>");
			}
		%>
	</table>
</body>
</html>