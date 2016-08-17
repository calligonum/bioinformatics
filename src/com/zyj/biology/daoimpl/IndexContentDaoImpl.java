package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.IndexContentDao;
import com.zyj.biology.po.Home;
import com.zyj.biology.po.News;

public class IndexContentDaoImpl implements IndexContentDao {
	public List getHome() {
		List homes = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from home";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Home homecontent = new Home();
				homecontent.setId(rs.getInt("id"));
				homecontent.setHome_content(rs.getString("home_content"));
				homecontent.setTitle(rs.getString("title"));
				homes.add(homecontent);
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
		return homes;
	}
	public List getNewstitle() {
		List newstitles = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from news order by publictime desc";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				News news = new News();
				news.setId(rs.getInt("id"));
				news.setTitle(rs.getString("title"));
				news.setContent(rs.getString("content"));
				news.setPublictime(rs.getString("publictime"));
				newstitles.add(news);
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
		return newstitles;
	}
	public boolean updateHome(Home home,int id) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update home set home_content=?,title=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, home.getHome_content());
			ps.setString(2, home.getTitle());
			ps.setInt(3,id);
			System.out.println(id);
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
	public News getContentbyid(int Id){
		News news = new News();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DbUtil dbUtil = null;
		String sql = "select * from news where id=?";
		try {
			dbUtil = new DbUtil();
			pstmt = dbUtil.getCon().prepareStatement(sql);
			pstmt.setInt(1, Id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				news.setId(rs.getInt("Id"));
				news.setTitle(rs.getString("title"));
				news.setContent(rs.getString("content"));
				news.setPublictime(rs.getString("publictime"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				dbUtil.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return news;
	}
}
