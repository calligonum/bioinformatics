package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.SubhomeDao;
import com.zyj.biology.po.Subhome;
import com.zyj.biology.po.Team;


public class SubhomeDaoImpl implements SubhomeDao{
	public List getSubhome() {
		List subhomes = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from subhome";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Subhome subhome = new Subhome();
				subhome.setId(rs.getInt("id"));
				subhome.setTitle(rs.getString("title"));
				subhome.setContent(rs.getString("content"));
				subhome.setSubtitle(rs.getString("subtitle"));
				subhome.setSubcontent(rs.getString("subcontent"));
				subhomes.add(subhome);
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
		return subhomes;
	}
	public boolean updateSubhome(Subhome subhome) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update subhome set title=?,content=?,subtitle=?,subcontent=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, subhome.getTitle());
			ps.setString(2, subhome.getContent());
			ps.setString(3, subhome.getSubtitle());
			ps.setString(4, subhome.getSubcontent());
			ps.setInt(5, subhome.getId());
			System.out.println(subhome.getId());
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
