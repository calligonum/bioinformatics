package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Team;


public class AddTeamServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String Name = request.getParameter("name");             
		String Professional = request.getParameter("professional");                     
		String Study = request.getParameter("study");             
		byte[] Name_buf = Name.getBytes("iso8859-1");
		byte[] Professional_buf = Professional.getBytes("iso8859-1");
		byte[] Study_buf = Study.getBytes("iso8859-1");
		Model model = new Model();
		Team team = new Team();
		team.setName(new String(Name_buf));
		team.setProfessional(new String(Professional_buf));
		team.setStudy(new String(Study_buf));
		if(model.addTeam(team)) {
			request.setAttribute("message", "添加成功");
		} else {
			request.setAttribute("message", "添加失败");
		}
		request.getRequestDispatcher("Admin/addteam.jsp").forward(request, response);
		}	
		
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		this.doGet(request, response);
		}

	
}
