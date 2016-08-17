package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.DownloadDao;
import com.zyj.biology.po.Download;



public class DownloadDaoImpl implements DownloadDao{
	public List getDownload(){
		List downloads = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from download";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Download download = new Download();
				download.setId(rs.getInt("id"));
				download.setName(rs.getString("name"));
				download.setSize(rs.getString("size"));
				download.setVersion(rs.getString("version"));
				download.setTime(rs.getString("time"));
				downloads.add(download);
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
		return downloads;
	}
	public boolean updateDownload(Download download) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update download set name=?,size=?,version=?,time=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, download.getName());
			ps.setString(2, download.getSize());
			ps.setString(3, download.getVersion());
			ps.setString(4, download.getTime());
			ps.setInt(5, download.getId());
			System.out.println(download.getId());
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
	public boolean deleteDownloadById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from download where id=?";
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
	public boolean addDownload(Download download) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into download values(null,?,?,?,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, download.getName());
			ps.setString(2, download.getSize());
			ps.setString(3, download.getVersion());
			ps.setString(4, download.getTime());
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
