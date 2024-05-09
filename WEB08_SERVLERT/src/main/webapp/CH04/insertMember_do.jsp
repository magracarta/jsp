<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
	//insertMember_do.jsp
	
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	 String driver = "com.mysql.cj.jdbc.Driver";
	 String url = "jdbc:mysql://localhost:3306/scott";
	 String id = "root";
	 String pw = "adminuser";
	 
	 String sql = "insert into members(id, name, pwd, phone) values (?,?,?,?)";
	 String userId = request.getParameter("userid");
	 String pwd = request.getParameter("pwd");
	 String name = request.getParameter("name");
	 String phone = request.getParameter("phone");
	 
	 int result = 0;
	 
	 //insertFrom.jsp 에서 전송된 데이터들을 이용하여 Members 테이블에 레코드를 추가해주세요.
	 try{
	  Class.forName(driver);
	  con = DriverManager.getConnection(url, id, pw);
	  pstmt = con.prepareStatement(sql);
	  pstmt.setString(1,userId);
	  pstmt.setString(2,name);
	  pstmt.setString(3,pwd);
	  pstmt.setString(4,phone);
	  
	  result = pstmt.executeUpdate();
	  
	  
	  
	 }catch(Exception e) {
	     e.printStackTrace();
	 }finally{
		 try {
	            if (pstmt!= null){
	               pstmt.close();
	            }if (con!= null){
	               con.close();
	            }            
	         } catch (Exception e) {
	            e.printStackTrace();
	         }
	 }
	 response.sendRedirect("MemberMGR.jsp");
%>