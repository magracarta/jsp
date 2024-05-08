<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>091_JSP_join_ok.jsp</title>
</head>
<body>
<h2>안녕하세요. <%= request.getAttribute("name") %>님 </h2>
<p> id : <%= request.getParameter("id") %></p>
<p> 성별 : <% int gender = Integer.parseInt(request.getParameter("gender"));
	if(gender ==1) out.print("여자");
	else out.print("남자");
%></p>
<p> 간단한 인사 : <%= request.getParameter("content") %></p>
<p> 구입 항복 : <%
		String [] items =request.getParameterValues("item"); 
		String [] itemstext = new String[items.length];
		for(int i =0; i< items.length; i++){
			String item;
			switch(items[i]){
			case "1" :  item ="신발"; break;
			case "2" : item = "가방"; break;
			case "3": item =  "벨트"; break;
			default  : item =   "모자"; break;
			};
			 itemstext[i] = item;
		}
		String itemsJoin = String.join(",",itemstext);
		out.print(itemsJoin);
		%></p>
<p> 직업 : <%
	switch(request.getParameter("job")){
	case "1" : out.print("학생"); break;
	case "2" : out.print("컴퓨터/인터넷"); break;
	default : out.print("언론"); break;
	};
%></p>		
</body>
</html>