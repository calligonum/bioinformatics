package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Download;

public class AddDownloadServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_name = request.getParameter("name"); 
		String str_size = request.getParameter("size"); 
		String str_veision = request.getParameter("version");
		String str_time = request.getParameter("time");        
		byte[] name_buf = str_name.getBytes("iso8859-1");
		byte[] size_buf = str_size.getBytes("iso8859-1");
		byte[] veision_buf = str_veision.getBytes("iso8859-1");
		byte[] time_buf = str_time.getBytes("iso8859-1");
		Model model = new Model();
		Download download = new Download();
		download.setName(new String(name_buf));
		download.setSize(new String(size_buf));
		download.setTime(new String(veision_buf));
		download.setVersion(new String(time_buf));
		if(model.addDownload(download)) {
			request.setAttribute("message", "添加成功");
		} else {
			request.setAttribute("message", "添加失败");
		}
		request.getRequestDispatcher("Admin/adddownload.jsp").forward(request, response);
		}	
		
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		this.doGet(request, response);
		}

}
