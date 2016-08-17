package com.zyj.biology.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zyj.biology.model.Model;
import com.zyj.biology.po.Antigen;

public class AddAntigenServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		String str_benchid= request.getParameter("benchid");
		String str_pdb_id= request.getParameter("pdb_id");
		String str_mimotopes= request.getParameter("mimotopes");
		String str_tem_c_No= request.getParameter("tem_c_No");
		String str_tar_c_No= request.getParameter("tar_c_No");
		String str_epitopes= request.getParameter("epitopes");
		String str_size_e= request.getParameter("size_e");
		if(str_size_e.equals("")){
			str_size_e="NULL";
		}
		String str_ref= request.getParameter("ref");
		String str_PMID= request.getParameter("PMID");
		String str_pdblink= request.getParameter("pdblink");
		String str_pmlink= request.getParameter("pmlink");            
		byte[] benchid_buf = str_benchid.getBytes("iso8859-1");
		byte[] pdb_id_buf = str_pdb_id.getBytes("iso8859-1");
		byte[] mimotopes_buf = str_mimotopes.getBytes("iso8859-1");
		byte[] tem_c_No_buf = str_tem_c_No.getBytes("iso8859-1");
		byte[] tar_c_No_buf = str_tar_c_No.getBytes("iso8859-1");
		byte[] epitopes_buf = str_epitopes.getBytes("iso8859-1");
		byte[] ref_buf = str_ref.getBytes("iso8859-1");
		byte[] PMID_buf = str_PMID.getBytes("iso8859-1");
		byte[] pdblink_buf = str_pdblink.getBytes("iso8859-1");
		byte[] pmlink_buf = str_pmlink.getBytes("iso8859-1");
		int size_e = Integer.parseInt(str_size_e);
		Model model = new Model();
		Antigen antigen = new Antigen();
		antigen.setBenchid(new String(benchid_buf));
		antigen.setEpitopes(new String(epitopes_buf));
		antigen.setMimotopes(new String(mimotopes_buf));
		antigen.setPdb_id(new String(pdb_id_buf));
		antigen.setPdblink(new String(pdblink_buf));
		antigen.setPMID(new String(PMID_buf));
		antigen.setPmlink(new String(pmlink_buf));
		antigen.setRef(new String(ref_buf));
		antigen.setSize_e(size_e);
		antigen.setTar_c_No(new String(tar_c_No_buf));
		antigen.setTem_c_No(new String(tem_c_No_buf));
		if(model.addAntigen(antigen)) {
			request.setAttribute("message", "添加成功");
		} else {
			request.setAttribute("message", "添加失败");
		}
		request.getRequestDispatcher("Admin/addantigen.jsp").forward(request, response);
		}	
		
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		
		this.doGet(request, response);
		}

}
