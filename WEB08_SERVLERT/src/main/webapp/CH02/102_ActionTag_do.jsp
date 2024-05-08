<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import = "java.net.URLEncoder" %>
<%
//102_ActionTag_do.jsp

String userid = request.getParameter("userID");
String pwd = request.getParameter("userPwd");
String loginCheck = request.getParameter("loginCheck");

//사용자 로그인일 경우... 103_ActionUer.jsp 로 이동
//관리자 로그인일 경우... 104_ActionManager.jsp 로 이동

//1. response.sendRedirect 를 이용하는 경우
/*
if( userid.equals("scott") && pwd.equals("1234") ){
	if( loginCheck.equals("user") ){
		response.sendRedirect(
				"103_ActionUer.jsp?userID="+userid+"&name="+ URLEncoder.encode("홍길동","UTF-8")
		);
	}else{
		response.sendRedirect(
				"104_ActionManager.jsp?userID="+userid+"&name="+ URLEncoder.encode("홍길동","UTF-8")
		);
	}
}else{
	response.sendRedirect("101_ActionTag.jsp");
}
*/

//2. forward를 이용하는 경우
/*
String url =null;
if( userid.equals("scott") && pwd.equals("1234")){
	if( loginCheck.equals("user") ){
		url ="103_ActionUer.jsp";
	}else{
		url ="104_ActionManager.jsp";
	}

}

request.setAttribute("name","홍길남");
RequestDispatcher rp = request.getRequestDispatcher(url);
rp.forward(request, response);
*/
//3. 액션 태그를 이용하는 경우

if( userid.equals("scott") && pwd.equals("1234")){
	if( loginCheck.equals("user") ){
		%>
			<jsp:forward page ="103_ActionUer.jsp">
				<jsp:param name="name" value='<%= URLEncoder.encode("홍길동","UTF-8") %>' />
			</jsp:forward>
		<%
	}else{
		%>
		<jsp:forward page ="104_ActionManager.jsp">
			<jsp:param name="name" value='<%= URLEncoder.encode("홍길동","UTF-8") %>' />
		</jsp:forward>
	<%
	}

}else{
	response.sendRedirect("101_ActionTag.jsp");
}

%>