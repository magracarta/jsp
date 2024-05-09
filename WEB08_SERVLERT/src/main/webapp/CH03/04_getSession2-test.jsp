<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Collections" %>
    <%@ page import = "java.util.Iterator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04_getSession.jsp</title>
</head>
<body>
<h3>세션에 저장된 값 하나씩 추출</h3>
<%
	String id = (String) session.getAttribute("id");
	String pwd = (String) session.getAttribute("pwd");
	Integer age = (Integer) session.getAttribute("age");
%>

id : <%=id %><br>
pwd : <%=pwd %><br>
age : <%=age %><br>

<h3>세션에 설정된 모든 값 얻어오기</h3>
<%
	
	java.util.Enumeration<String> names = session.getAttributeNames(); //attribute 의 key들 추출
	Iterator<String> name2 = Collections.list(names).iterator();
	while(name2.hasNext()){
		String name = name2.next().toString(); //키값 하나씩 꺼내서
		String value = session.getAttribute(name).toString(); //value값 추출
		out.print("<h3>Key : "+name+ " & value : " + value+"<br></h3>"); //출력
	}
%>
</body>
</html>