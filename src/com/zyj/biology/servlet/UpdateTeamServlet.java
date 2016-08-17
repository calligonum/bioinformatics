package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Home;
import com.zyj.biology.po.Team;

public class UpdateTeamServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("id");
		String name = request.getParameter("name"); 
		String professional = request.getParameter("professional"); 
		String study = request.getParameter("study"); 
		int id = Integer.parseInt(str_id);
		System.out.println(str_id+"test3");
		Model model = new Model();
		Team team = new Team();
		team.setName(name);
		team.setProfessional(professional);
		team.setStudy(study);
		if(model.updateTeam(team,id)) {
			System.out.println(team.getName()+"test1");
			request.setAttribute("message", "�޸ĳɹ����ѷ���");
		} else {
			request.setAttribute("message", "�޸�ʧ�ܣ��������޸�");
		}
		request.getRequestDispatcher("Adminmanageservlet").forward(request, response);
		}
		
		
			
		
			
		
		
		
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
		}

}
