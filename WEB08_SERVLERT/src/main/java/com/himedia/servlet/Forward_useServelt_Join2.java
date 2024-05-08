package com.himedia.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Forward_useServelt_Join2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Forward_useServelt_Join2() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(!id.isEmpty() && !pwd.isEmpty() ) {
			request.setAttribute("name","홍길동");
			RequestDispatcher rd = request.getRequestDispatcher("CH02/091_JSP_join_ok.jsp");
			
			
			rd.forward(request, response);
		}else {
			response.sendRedirect("CH02/091_JSP_ServletEx.jsp");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
