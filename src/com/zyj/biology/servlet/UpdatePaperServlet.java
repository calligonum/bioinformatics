package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;

import com.zyj.biology.po.Papers;

public class UpdatePaperServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("paperid");
		String str_year = request.getParameter("year"); 
		System.out.println(str_year+"test1");
		String str_list = request.getParameter("list"); 
		int id = Integer.parseInt(str_id);
		int year=Integer.parseInt(str_year);
		Model model = new Model();
		Papers papers = new Papers();
		
		papers.setYear(year);
		papers.setList(str_list);
		if(model.updatePaper(papers,id)) {
			System.out.println(id+"test2");
			request.setAttribute("message", "修改成功，已返回");
		} else {
			request.setAttribute("message", "修改失败，请重新修改");
		}
		request.getRequestDispatcher("Adminmanageservlet").forward(request, response);
		}
		
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
		}
}
