<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_Sum.jsp</title>
</head>
<body>
		<!-- JSP는 JAVA에서 사용하던 거의 모든 분법이 똑같이 사용됩니다. -->
		<%
			int sum = 0;//변수선언
			for (int i =1; i <=100; i++){ //반복실행문
				sum += i; //누적 연산
				
			}
		%>
		<h2>1부터 100까지의 합계 : <%= sum %></h2>
		<%
			sum = 0;
			for(int i =1; i <10; i++){
				sum += i;
			
		%>
		<h2>1부터 100까지의 합계 : <%= sum %></h2>
		<%
			}
		%>
</body>
</html>