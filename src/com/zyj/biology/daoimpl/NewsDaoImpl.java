package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.NewsDao;
import com.zyj.biology.po.News;
import com.zyj.biology.po.Team;


public class NewsDaoImpl implements NewsDao{

	public List getNews(int id) {
		List newss = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from news where id = ?";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				News news = new News();
				news.setId(rs.getInt("id"));
				news.setTitle(rs.getString("title"));
				news.setContent(rs.getString("content"));
				news.setPublictime(rs.getString("publictime"));
				newss.add(news);
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
		return newss;
	}
	public boolean addNews(News news) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into team values(null,?,?,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, news.getTitle());
			ps.setString(2, news.getContent());
			ps.setString(3, news.getPublictime());
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
