package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;

public class DeleteProteinServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		int Id = 0;
		String str_Id = request.getParameter("id");
		System.out.println(str_Id);
		if(str_Id != null){
			Id = Integer.parseInt(str_Id);
		}
		Model model = new Model();
		if(model.deleteProteinById(Id)){
			
		request.setAttribute("message", "É¾³ý³É¹¦£¬ÒÑ·µ»Ø");
	} else {
		request.setAttribute("message", "É¾³ýÊ§°Ü£¬ÇëÖØÐÂÉ¾³ý");
	}
		request.getRequestDispatcher("Adminmanageservlet").forward(request, response);
		}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
		}

}
