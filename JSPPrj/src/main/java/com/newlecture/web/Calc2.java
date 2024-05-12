package com.newlecture.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/calc2")
public class Calc2 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		HttpSession session = request.getSession();
		String v_ = request.getParameter("v");
		String op =  request.getParameter("operator");
		
		int v = 0;
	
	 		
		if(!op.equals("") ) v =Integer.parseInt(v_);
		if( op.equals("=")) {
			//int x = (Integer) application.getAttribute("value");
			int x = (Integer) session.getAttribute("value");
			//String operator = (String) application.getAttribute("op");
			String operator = (String) session.getAttribute("op");
			int y = v;

			int result = 0;
			if(operator.equals("+"))result = x+y;
			else result  = x-y;
			
			response.getWriter().printf("reslut id %d\n", result);
			
		 	
		}else {
			//application.setAttribute("value", v);
			//application.setAttribute("op", op);
			
			session.setAttribute("value", v);
			session.setAttribute("op", op);
		 
		}
			
	}


	

}
