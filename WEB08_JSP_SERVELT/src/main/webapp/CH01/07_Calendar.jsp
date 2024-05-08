<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>07_Calendar.jsp</title>
<style type="text/css">
	.title { width : 560px; height: 80px; margin:0 auto; display: flex; justify-content: center;
    align-items: center; border:1px solid gray; }
    .container {  width:560px; margin:0 auto; border:1px solid gray; }
    .container * { font-size:120%; font-weight: bold; }
    .container .row { display:flex;  width:100%;   }
    .container .row .column { flex:1; height:80px; display:flex; justify-content: center; align-items:center; border:1px solid gray;  }
    .row .column:first-child { color:red; }
    .row .column:last-child { color:red; }
</style>
</head>
<body>
<%
	Calendar sDay = Calendar.getInstance(); //오늘날짜
	int sYear = sDay.get(Calendar.YEAR);  // 년도 추출
	int sMonth = sDay.get(Calendar.MONTH); //월 추출
	
	//최초 실행시 request.getParameter("sYear")는 null
	//이전달이나 다음달 버튼을 클리하고 이동해온 경우는 null 도 아니고 그 값으로 sYear와 sMonth를 교체해줘야합니다.
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
	onclick="location.href='07_Calendar.jsp?sYear=<%=sYear%>&sMonth=<%=sMonth-1%>'">&nbsp;
	<%
		out.print("<span style='font-size:180%; font-weight:bold;'>"+sYear+"년 "+ (sMonth+1)+"월</span>");
	%>
	&nbsp;<input type="button" value="다음달" 
		onclick="location.href='07_Calendar.jsp?sYear=<%=sYear%>&sMonth=<%=sMonth+1%>'"
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
 	//1일이 포함된 첫행 줄 출력
 	out.print("<div class='row'>");
	
	int k;
	for(k =1; k < start_week; k++){ //첫칸 부터 1일자 요일칸 전까지 빈칸으로
		out.print("<div class='column'>&nbsp;</div>");
	}
	int day =1;
	for(int i = k; i<=7; i++){
		out.print("<div class='column'>"+(day++)+"</div>");
	}
 	out.print("</div>");
 	
 	//두번째 행부터 출력
 	for(int i =1; i <=5; i++){
 		out.print("<div class='row'>");
 		for(int j = 1; j <=7; j++){
 			if(day > lastDay) out.print("<div class='column'>&nbsp;</div>");
 			else 	out.print("<div class='column'>"+(day++)+"</div>");
 		}
 		out.print("</div>");
 		
 	}
%>

</div>
</body>
</html>