package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.ProjectDao;
import com.zyj.biology.po.Project;
import com.zyj.biology.po.Team;


public class ProjectDaoImpl implements ProjectDao{
	public List getProject() {
		List projects = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from project";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Project project = new Project();
				project.setId(rs.getInt("id"));
				project.setList(rs.getString("list"));
				projects.add(project);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				daoUtil.close();
			} catch(SQLException s) {
				s.printStackTrace();
			}
		}
		return projects;
	}
	public boolean updateProject(Project project) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update project set list=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, project.getList());
			ps.setInt(2, project.getId());
			System.out.println(project.getId());
			int i = ps.executeUpdate();
			if(i != 0) {
				return true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				dao.close();
			} catch(SQLException s) {
				s.printStackTrace();
			}
		}
	
		return false;
		 
	}
	public boolean deleteProjectById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from project where id=?";
			ps = dao.getCon().prepareStatement(sql);
			ps.setInt(1,Id);
			int i = ps.executeUpdate();
			if(i != 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				ps.close();
				dao.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	public boolean addProject(Project project) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into project values(null,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, project.getList());
			int i = ps.executeUpdate();
			if(i != 0) {
				return true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				dao.close();
			} catch(SQLException s) {
				s.printStackTrace();
			}
		}
		return false;
	}
}
