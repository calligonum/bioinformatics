package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Classes;
import com.zyj.biology.po.Download;

public class UpdateDownloadServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("id");
		String str_name = request.getParameter("name"); 
		String str_size = request.getParameter("size"); 
		String str_veision = request.getParameter("veision"); 
		String str_time = request.getParameter("time"); 
		int id = Integer.parseInt(str_id);
		Model model = new Model();
		Download download = new Download();
		download.setId(id);
		download.setName(str_name);
		download.setSize(str_size);
		download.setTime(str_time);
		download.setVersion(str_veision);
		if(model.updateDownload(download)) {
			System.out.println(download.getId());
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
