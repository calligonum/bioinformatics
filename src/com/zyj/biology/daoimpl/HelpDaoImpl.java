package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.HelpDao;
import com.zyj.biology.po.Help;
import com.zyj.biology.po.Team;


public class HelpDaoImpl implements HelpDao{
	public List getHelp() {
		List helps = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from help";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Help help = new Help();
				help.setId(rs.getInt("id"));
				help.setIntroduction(rs.getString("introduction"));
				help.setInclusion(rs.getString("inclusion"));
				help.setAcknowledgments(rs.getString("acknowledgments"));
				helps.add(help);
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
		return helps;
	}
	public boolean updateHelp(Help help) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update help set introduction=?,inclusion=?,acknowledgments=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, help.getIntroduction());
			ps.setString(2, help.getInclusion());
			ps.setString(3, help.getAcknowledgments());
			ps.setInt(4, help.getId());
			System.out.println(help.getId());
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
