package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Project;
import com.zyj.biology.po.Team;

public class UpdateProjectServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("id");
		String list = request.getParameter("list"); 
		int id = Integer.parseInt(str_id);
		Model model = new Model();
		Project project = new Project();
		project.setId(id);
		project.setList(list);
		if(model.updateProject(project)) {
			System.out.println(project.getId());
			request.setAttribute("message", "�޸ĳɹ����ѷ���");
		} else {
			request.setAttribute("message", "�޸�ʧ�ܣ��������޸�");
		}
		request.getRequestDispatcher("Admin/updateproject.jsp").forward(request, response);
		}
		
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
		}
}
