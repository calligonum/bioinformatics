package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Subhome;

public class UpdateSubhomeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("id");
		String str_content = request.getParameter("content"); 
		String str_title = request.getParameter("title");
		String str_subcontent = request.getParameter("subcontent"); 
		String str_subtitle = request.getParameter("subtitle");
		int id = Integer.parseInt(str_id);
		Model model = new Model();
		Subhome subhome = new Subhome();
		subhome.setId(id);
		subhome.setContent(str_content);
		subhome.setTitle(str_title);
		subhome.setSubcontent(str_subcontent);
		subhome.setSubtitle(str_subtitle);
		if(model.updateSubhome(subhome)) {
			System.out.println(subhome.getId());
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
