package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.News;



public class DeleteNewsServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		int Id = 0;
		String str_Id = request.getParameter("id");
		if(str_Id != null){
			Id = Integer.parseInt(str_Id);
		}
		Model model = new Model();
		if(model.deletenewsById(Id)){
			
		request.setAttribute("message", "ɾ���ɹ����ѷ���");
	} else {
		request.setAttribute("message", "ɾ��ʧ�ܣ�������ɾ��");
	}
		request.getRequestDispatcher("Adminmanageservlet").forward(request, response);
		}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
		}

}
