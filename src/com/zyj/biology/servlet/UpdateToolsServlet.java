package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Datasets;
import com.zyj.biology.po.Team;
import com.zyj.biology.po.Tools;

public class UpdateToolsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("id");
		String str_list = request.getParameter("list"); 
		String str_link = request.getParameter("link"); 
		int id = Integer.parseInt(str_id);
		Model model = new Model();
		Tools tools = new Tools();
		tools.setId(id);
		tools.setList(str_list);
		tools.setLink(str_link);
		if(model.updateTools(tools)) {
			System.out.println(tools.getId());
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