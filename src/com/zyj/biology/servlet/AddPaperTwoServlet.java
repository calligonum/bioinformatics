package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;

import com.zyj.biology.po.Papers;
import com.zyj.biology.po.Year;

public class AddPaperTwoServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_paper= request.getParameter("paper");
		String str_year= request.getParameter("choosedyear");        
		byte[] paper_buf = str_paper.getBytes("iso8859-1");
		Model model = new Model();
		Year year=new Year();
		year.setYear(str_year);
		System.out.println(str_year);
		List yearList = model.getYear();
		request.getSession().setAttribute("yearList", yearList);
		Papers papers = new Papers();
		papers.setList(new String(paper_buf));
		if(model.addPaperbyyear(papers,str_year)) {
			request.setAttribute("message", "添加成功");
		} else {
			request.setAttribute("message", "添加失败");
		}
		request.getRequestDispatcher("Admin/addpaper.jsp").forward(request, response);
		}	
		
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		this.doGet(request, response);
		}
}
