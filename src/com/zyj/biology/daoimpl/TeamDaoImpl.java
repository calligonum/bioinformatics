package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.TeamDao;
import com.zyj.biology.po.Team;



public class TeamDaoImpl implements TeamDao{
	public List getTeam() {
		List teams = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from team";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Team team = new Team();
				team.setId(rs.getInt("id"));
				team.setName(rs.getString("name"));
				team.setProfessional(rs.getString("professional"));
				team.setStudy(rs.getString("study"));
				teams.add(team);
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
		return teams;
	}
	public boolean updateTeam(Team team,int id) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update team set name=?,professional=?,study=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, team.getName());
			ps.setString(2, team.getProfessional());
			ps.setString(3, team.getStudy());
			ps.setInt(4, id);
			System.out.println(id+"test2");
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
	public boolean deleteTeamById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from team where id=?";
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
	public boolean addTeam(Team team) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into team values(null,?,?,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, team.getName());
			ps.setString(2, team.getProfessional());
			ps.setString(3, team.getStudy());
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
