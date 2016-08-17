package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Home;
public class UpdateIntroduceServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("id");
		String home_content = request.getParameter("home_content"); 
		String title = request.getParameter("title"); 
		int id = Integer.parseInt(str_id);
		Model model = new Model();
		Home home = new Home();
		home.setHome_content(home_content);
		home.setTitle(title);
		if(model.updateHome(home,id)) {
			System.out.println(id+"test1");
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
