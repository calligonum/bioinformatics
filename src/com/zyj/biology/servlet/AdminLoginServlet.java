package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.model.Model;
import com.zyj.biology.po.Admin;
import com.zyj.biology.exception.PasswordError;
import com.zyj.biology.exception.NameNotFound;



public class AdminLoginServlet extends HttpServlet {
	public static String name;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		name = request.getParameter("name");
		String password = request.getParameter("password");
		Admin admin = new Admin();
		admin.setName(name);
		admin.setPassword(password);
		Model model = new Model();
		try {
			if(model.login(admin)) {
				request.getSession().setAttribute("admin", admin);
				//request.getSession().setAttribute("password", password);
				response.sendRedirect("Admin/manage.jsp?name="+name);
				} else {
					request.getRequestDispatcher("Admin/login/adminLogin.jsp").forward(request, response);				
			}
		} 		
		catch(NameNotFound nnf) {
			request.setAttribute("message", nnf.getMessage());
			request.getRequestDispatcher("Admin/login/adminLogin.jsp").forward(request, response);
		} catch(PasswordError pe) {
			request.setAttribute("message", pe.getMessage());
			request.getRequestDispatcher("Admin/login/adminLogin.jsp").forward(request, response);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	
		this.doGet(request, response);
	}

}
