package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.PaperDao;
import com.zyj.biology.model.Model;

import com.zyj.biology.po.Papers;
import com.zyj.biology.po.Team;
import com.zyj.biology.po.Year;


public class PaperDaoImpl implements PaperDao{
	
	public List getPaperbyyear(int number){
		List paperss = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			System.out.println(number);
			sql = "select * from papers where year=(select id from year where year.year=?)";
			ps = daoUtil.getCon().prepareStatement(sql);
			ps.setInt(1, number);
			rs = ps.executeQuery();
			while (rs.next()) {
				Papers papers = new Papers();
				papers.setId(rs.getInt("id"));
				papers.setYear(rs.getInt("year"));
				papers.setList(rs.getString("list"));
				System.out.println("testtest");
				paperss.add(papers);
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
		return paperss;
	}
	public boolean updatePaper(Papers papers,int id) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update papers set year=?,list=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setInt(1, papers.getYear());
			ps.setString(2, papers.getList());
			ps.setInt(3,id);
			System.out.println(id+"test3");
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
	public boolean deletePaperById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from papers where id=?";
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
	
	public boolean addPaperbyyear(Papers papers,String y) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		Year year=new Year();
		String sql = "";
		try {
			dao = new DbUtil();
			int  id=0;
			Model model=new Model();
			id=model.getidbyyear(y);
			sql = "insert into papers values(null,?,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, papers.getList());
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

		public int getidbyyear(String y){
			int id=0;
			DbUtil daoUtil = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			String sql = null;
			try {
				daoUtil = new DbUtil();
				sql = "select id from year where year.year=?";
				ps = daoUtil.getCon().prepareStatement(sql);
				ps.setString(1, y);
				rs = ps.executeQuery();
				while (rs.next()) {
					Year year = new Year();
					year.setId(rs.getInt("id"));
					id=year.getId();
					System.out.println(id);
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
			return id;
		}	
	
	public boolean addYear(Year year) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into year values(null,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, year.getYear());
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

