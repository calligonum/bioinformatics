package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Tools;

public class AddToolsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String List = request.getParameter("list");             
		String Link = request.getParameter("link");                               
		byte[] List_buf = List.getBytes("iso8859-1");
		byte[] Link_buf = Link.getBytes("iso8859-1");	
		Model model = new Model();
		Tools tools = new Tools();
		tools.setList(new String(List_buf));
		tools.setLink(new String(Link_buf));
		if(model.addTools(tools)) {
			request.setAttribute("message", "添加成功");
		} else {
			request.setAttribute("message", "添加失败");
		}
		request.getRequestDispatcher("Admin/addtools.jsp").forward(request, response);
		}	
		
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		this.doGet(request, response);
		}

}
