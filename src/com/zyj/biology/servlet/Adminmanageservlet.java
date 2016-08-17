package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;

public class Adminmanageservlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		AdminLoginServlet als=new AdminLoginServlet();
		String name=als.name;
		Model model = new Model();
		List teamList = model.getTeam();
		request.getSession().setAttribute("teamList", teamList);
		List projectList = model.getProject();
		request.getSession().setAttribute("projectList", projectList);
		List yearList = model.getYear();
		request.getSession().setAttribute("yearList", yearList);
		List datasetsList = model.getDatasets();
		request.getSession().setAttribute("datasetsList", datasetsList);
		List toolsList = model.getTools();
		request.getSession().setAttribute("toolsList", toolsList);
		List classList = model.getClasses();
		request.getSession().setAttribute("classList", classList);
		List homeList = model.getHome();
		request.getSession().setAttribute("homeList", homeList);
		List antigenList = model.getAntigen();
		request.getSession().setAttribute("antigenList", antigenList);
		List contactList = model.getContact();
		request.getSession().setAttribute("contactList", contactList);
		List downloadList = model.getDownload();
		request.getSession().setAttribute("downloadList", downloadList);
		List helpList = model.getHelp();
		request.getSession().setAttribute("helpList", helpList);
		List subhomeList = model.getSubhome();
		request.getSession().setAttribute("subhomeList", subhomeList);
		List proteinList = model.getProtein();
		request.getSession().setAttribute("proteinList", proteinList);
		//response.sendRedirect("Admin/manage.jsp");
		request.getRequestDispatcher("Admin/manage.jsp?name="+name).forward(request, response);
		
		}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
		}

}
