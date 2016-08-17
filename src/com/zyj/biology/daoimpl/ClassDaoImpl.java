package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.ClassDao;
import com.zyj.biology.po.Classes;
import com.zyj.biology.po.News;

import com.zyj.biology.po.Team;

public class ClassDaoImpl implements ClassDao{
	public List getClasses(){
		List classs = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from classes";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Classes classe = new Classes();
				classe.setId(rs.getInt("id"));
				classe.setClasses(rs.getString("classes"));
				classs.add(classe);
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
		return classs;
	}	
	public boolean updateClasses(Classes classes) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update classes set classes=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, classes.getClasses());
			ps.setInt(2, classes.getId());
			System.out.println(classes.getId());
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
	public boolean deleteClassesById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from Classes where id=?";
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
	public boolean addClasses(Classes classes) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into classes values(null,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, classes.getClasses());
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
	public boolean addNews(News news) {
		// TODO Auto-generated method stub
		return false;
	}
	public boolean deletenewsById(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	public boolean updateNews(News news) {
		// TODO Auto-generated method stub
		return false;
	}
}
