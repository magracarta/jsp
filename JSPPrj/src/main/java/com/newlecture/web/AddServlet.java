package com.newlecture.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/add")
public class AddServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String x_ =request.getParameter("x");
		String y_ =  request.getParameter("y");
		
		int x = !x_.isBlank() ? Integer.parseInt(x_) : 0;
		int y = !y_.isBlank() ? Integer.parseInt(y_) : 0;
		
		PrintWriter out = response.getWriter();
		
		out.print("x + y = "+(x+y));
	}


	

}
