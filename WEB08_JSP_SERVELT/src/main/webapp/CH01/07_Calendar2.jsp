<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_Calendar.jsp</title>
<style>
	.title { width : 560px; height: 80px; margin:0 auto; display: flex; justify-content: center;
    align-items: center; border:1px solid gray; }
    .container {  width:560px; margin:0 auto; border:1px solid gray; }
    .container * { font-size:120%; font-weight: bold; }
    .container .row { display:flex;  width:100%;   }
    .container .row .column { flex:1; height:80px; display:flex; justify-content: center; align-items:center; border:1px solid gray;  }
    .row .column:first-child { color:red; }
    .row .column:last-child { color:red; }
    @media (max-width: 768px) {
		.title { width : 100%; height: 50px;  }
		.container * { font-size:15px; }
		.container {  width:100%;}
	}
</style>
</head>
<body>
<%
	Calendar sDay = Calendar.getInstance(); //오늘날짜
	int sYear = sDay.get(Calendar.YEAR);  // 년도 추출
	int sMonth = sDay.get(Calendar.MONTH); //월 추출
	if(request.getParameter("sYear")!=null){
		sYear = Integer.parseInt(request.getParameter("sYear"));  // 년도 추출
		sMonth = Integer.parseInt(request.getParameter("sMonth")); //월 추출
		if(sMonth == 12) { sMonth =0; sYear ++; }
		if(sMonth == -1) { sMonth =11; sYear --; }
	}
	
	
	sDay.set(sYear, sMonth,1);//sDay 객체를 현재달 1일로 수정
	int lastDay = sDay.getActualMaximum(Calendar.DATE); // 현재달 마지막 날짜(말일) 추출 저장
	int start_week = sDay.get(Calendar.DAY_OF_WEEK); //현재달 1일의 요일 추출
	
%>
<div class="title">
	<input type="button" value="이전달" 
		onclick="location.href ='07_Calendar2.jsp?sYear=<%= sYear%>&sMonth=<%= sMonth-1%>'"
	>&nbsp;
	
	<%
		out.print("<span style='font-size:180%; font-weight:bold;'>"+sYear+"년 "+ (sMonth+1)+"월</span>");
	%>
	&nbsp;<input type="button" value="다음달"
		onclick="location.href='07_Calendar2.jsp?sYear=<%= sYear %>&sMonth=<%= sMonth+1 %>'"
	>
</div>
<div class="container">
	<div class="row">
		<div class="column">일</div>
		<div class="column">월</div>
		<div class="column">화</div>
		<div class="column">수</div>
		<div class="column">목</div>
		<div class="column">금</div>
		<div class="column">토</div>
	</div>

<%
 	
 	int rowCount= (lastDay+(start_week-2))/7-1;
 	
	int k =1;
	int day =1;
	if(start_week != 1){
		out.print("<div class='row'>");
		for(k = 1; k<=7; k++){
			if(k >= start_week) out.print("<div class='column'>"+(day++)+"</div>");
			else out.print("<div class='column'>&nbsp;</div>");
		}
		out.print("</div>");
	}else{
		if(rowCount%7 !=0) rowCount+=1;
	}
 
	for(int i =0; i <= rowCount; i++  ){
		out.print("<div class='row'>");
		for(int j =1; j<=7; j++){
			if(day > lastDay) out.print("<div class='column'>&nbsp;</div>");
 			else 	out.print("<div class='column'>"+(day++)+"</div>");
		}
		out.print("</div>");
	}
	
	
 	
%>

</div>
</body>
</html>