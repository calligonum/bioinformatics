package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.News;



public class AddNewsServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		//String str_id = request.getParameter("id");
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String publictime = dateFormat.format( now );
		String content = request.getParameter("content");		
		String title = request.getParameter("title");
		
		
		byte[] Content_buf = content.getBytes("iso8859-1");		
		byte[] Title_buf = title.getBytes("iso8859-1");		
		//byte[] Publictime_buf = publictime.getBytes("iso8859-1");	
		Model model = new Model();
		News news = new News();
		news.setTitle(new String(Title_buf));//Tile_buf is null!!
		news.setContent(new String(Content_buf));
		news.setPublictime(publictime );
		
		
	
		if(model.addNews(news)) {
			request.setAttribute("message", "添加成功");
		} else {
			request.setAttribute("message", "添加失败");
		}
		request.getRequestDispatcher("Admin/addnews.jsp").forward(request, response);
		}	
		
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		this.doGet(request, response);
		}	
}
