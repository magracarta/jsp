<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_EL.jsp</title>
</head>
<body>
<!-- 
	표현 언어(EL, Expression Language) : JSP의 전달 값이나 변수값 등 자료를 출력할때의 번거로움을
	간단히 해결하기 위해 만들어진 출력 문법, jsp의 문법을 html5에서 좀더 구분하기 쉽고,
	오류를 줄여서 운용하기 위해 개발된 언어. 주로 pageContext, request, session, application에 전달되는
	Attribute의 값을 getter를 이용하지 않고 출력할 떄 사용합니다.
 -->
 <h3>
 JSP 문법 사용 1 : <%= "Hello" %><br>
 JSP 문법 사용 2 : <% out.print("Hello"); %><br>
 EL 문법 사용 : ${"Hello"}
 </h3>
 <%
 request.setAttribute("name", "홍길동");
 %>
  <h3>
 JSP 문법 사용 1 : <%= request.getAttribute("name") %><br>
 JSP 문법 사용 2 : <% out.println(request.getAttribute("name")); %><br>
 EL 문법 사용 : ${name}
 </h3>
 <h3>
 정수형 : ${10}<br>
 실수형 : ${5.6}<br>
 문자열형 : ${"홍길동"}<br>
 논리형 : ${true}<br>
 null : ${null}<br>
 </h3>
 <br><br>
 <h3>
 <!-- 산술 연산 -->
 10과 2의 합 : ${10+2} <br>
 \${10-2} : ${10-2}<br>
 <!--
 \${10+2}는 모양 그대로 출력,
 ${10+2}는 계산된 결과 출력
--> 
\${10*2} = ${10*2}<br>
\${10/2} = ${10/2}<br>
\${10%3} = ${10%3}<br>
\${10 mod 3} = ${10 mod 3}<br>
   
   
 </h3>
 
 <br><br>
 <h3>
 <!-- 관계연산 (비교연산) -->
 \${ 10 == 2 } = ${ 10 == 2 }<br>
 \${ 10 eq 2 } = ${ 10 eq 2 }<br>
 \${ 10 != 2 } = ${ 10 != 2 }<br>
<%--  \${ 10 ne 2 } = ${ 10 ne 2 }<br> --%>
\${ 10 < 2 } = ${ 10 < 2 }<br>
\${ 10 lt 2 } = ${ 10 lt 2 }<br>
\${ 10 > 2 } = ${ 10 > 2 }<br>
\${ 10 gt 2 } = ${ 10 gt 2 }<br>

\${ 10 <= 2 } = ${ 10 <= 2 }<br>
\${ 10 le 2 } = ${ 10 le 2 }<br>
\${ 10 >= 2 } = ${ 10 >= 2 }<br>
\${ 10 ge 2 } = ${ 10 ge 2 }<br>

\${ empty("") } = ${ empty("") }<br>

 </h3>
 <br><br><br><br>
 
 <h3>
 <!-- 서로 다른 자료형간의 연산 -->
 \${"2" + 5} =  ${"2" + 5} <br>
 \${"2" + "5"} =  ${"2" + "5"} <br> <!-- 문자와 문자의 + 산술연산 -->
 \${"2" * 5} =  ${"2" * 5} <br>
 \${null + 1} =  ${null + 1} <br>
 </h3>
  <br><br><br><br>
 
 <h3>
 <!-- 문자열 연결 (EL 3.0 추가) -->
 \${ "문자" += "열 " += "연결" } = ${ "문자" += "열 " += "연결" }
 </h3>
 
 <br><br><br><br>
 <!-- 서버 객체의 내용을 getAttribute 메서드 없이 사용 -->
<%
	pageContext.setAttribute("name1","홍길서");
	pageContext.setAttribute("name2","홍길동");
	pageContext.setAttribute("name3","홍길남");
	pageContext.setAttribute("name4","홍길북");
%>

<h3>
JSP 문법(request) : <%= request.getAttribute("name2") %><br>
JSP 문법(request) : <% String str = (String) request.getAttribute("name2"); %>
	<%=str %>
<br>

<h3>
EL 문법 : ${name1} <br>
EL 문법 : ${name2} <br>
EL 문법 : ${name3} <br>
EL 문법 : ${name4} <br>
</h3>

</h3>
</body>
</html>







