package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;

public class Detailpaperservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String str_year =request.getParameter("year");
		System.out.println(str_year);
		int year=0;
		if (str_year!=null)
			year=Integer.parseInt(str_year);
		System.out.println(year);
		Model model = new Model();
		List papersList = model.getPaperbyyear(year);
		request.getSession().setAttribute("papersList", papersList);
		response.sendRedirect("Adminmanageservlet");
		}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
		}

	

}
