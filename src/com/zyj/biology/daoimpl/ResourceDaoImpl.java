package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.ResourceDao;
import com.zyj.biology.po.Datasets;

import com.zyj.biology.po.Team;
import com.zyj.biology.po.Tools;

public class ResourceDaoImpl implements ResourceDao{
	public List getDatasets(){
		List datasets = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from datasets";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Datasets dataset = new Datasets();
				dataset.setId(rs.getInt("id"));
				dataset.setList(rs.getString("list"));
				dataset.setLink(rs.getString("link"));
				datasets.add(dataset);
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
		return datasets;
	}
	public List getTools(){
		List tools = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from tools";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Tools tool = new Tools();
				tool.setId(rs.getInt("id"));
				tool.setList(rs.getString("list"));
				tool.setLink(rs.getString("link"));
				tools.add(tool);
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
		return tools;
	}
	public boolean updateDatasets(Datasets datasets) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update datasets set list=?,link=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, datasets.getList());
			ps.setString(2, datasets.getLink());
			ps.setInt(3, datasets.getId());
			System.out.println(datasets.getId());
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
	public boolean deleteDatasetsById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from datasets where id=?";
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
	public boolean addDatasets(Datasets datasets) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into datasets values(null,?,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, datasets.getList());
			ps.setString(2, datasets.getLink());
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
	public boolean updateTools(Tools tools) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update tools set list=?,link=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, tools.getList());
			ps.setString(2, tools.getLink());
			ps.setInt(3, tools.getId());
			System.out.println(tools.getId());
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
	public boolean deleteToolsById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from tools where id=?";
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
	public boolean addTools(Tools tools) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into tools values(null,?,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, tools.getList());
			ps.setString(2, tools.getLink());
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
