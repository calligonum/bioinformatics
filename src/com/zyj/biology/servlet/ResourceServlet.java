package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;

public class ResourceServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		Model model = new Model();
		List datasetsList = model.getDatasets();
		request.getSession().setAttribute("datasetsList", datasetsList);
		List toolsList = model.getTools();
		request.getSession().setAttribute("toolsList", toolsList);
		response.sendRedirect("resource.jsp");
		
		}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		this.doGet(request, response);
		}
}
