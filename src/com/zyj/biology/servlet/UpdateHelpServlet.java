package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Contact;
import com.zyj.biology.po.Help;

public class UpdateHelpServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("id");
		String str_introduction = request.getParameter("introduction");
		String str_inclusion = request.getParameter("inclusion");
		String str_acknowledgments = request.getParameter("acknowledgments");
		int id = Integer.parseInt(str_id);
		Model model = new Model();
		Help help = new Help();
		help.setId(id);
		help.setInclusion(str_inclusion);
		help.setIntroduction(str_introduction);
		help.setAcknowledgments(str_acknowledgments);
		if(model.updateHelp(help)) {
			System.out.println(help.getId());
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
