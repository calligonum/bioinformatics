package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Protein;

public class UpdateProteinServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_id = request.getParameter("id");
		String str_benchid= request.getParameter("benchid");
		String str_pdb_id= request.getParameter("pdb_id");
		String str_mimotopes= request.getParameter("mimotopes");
		String str_tem_c_No= request.getParameter("tem_c_No");
		String str_tar_c_No= request.getParameter("tar_c_No");
		String str_epitopes= request.getParameter("epitopes");
		String str_size_e= request.getParameter("size_e");
		String str_ref= request.getParameter("ref");
		String str_PMID= request.getParameter("PMID");
		String str_pdblink= request.getParameter("pdblink");
		String str_pmlink= request.getParameter("pmlink");
		int id = Integer.parseInt(str_id);
		int size_e=Integer.parseInt(str_size_e);
		Model model = new Model();
		Protein protein = new Protein();
		protein.setId(id);
		protein.setBenchid(str_benchid);
		protein.setEpitopes(str_epitopes);
		protein.setMimotopes(str_mimotopes);
		protein.setPdb_id(str_pdb_id);
		protein.setPdblink(str_pdblink);
		protein.setPMID(str_PMID);
		protein.setPmlink(str_pmlink);
		protein.setRef(str_ref);
		protein.setSize_e(size_e);
		protein.setTar_c_No(str_tar_c_No);
		protein.setTem_c_No(str_tem_c_No);
		if(model.updateProtein(protein)) {
			System.out.println(protein.getId());
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
