package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.BenchmarkDao;
import com.zyj.biology.po.Antigen;
import com.zyj.biology.po.Protein;
import com.zyj.biology.po.Team;

public class BenchmarkDaoImpl implements BenchmarkDao{
	public List getAntigen(){
		List antigens = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from antigen";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Antigen antigen = new Antigen();
				antigen.setId(rs.getInt("id"));
				antigen.setPdb_id(rs.getString("pdb_id"));
				antigen.setBenchid(rs.getString("benchid"));
				antigen.setEpitopes(rs.getString("epitopes"));
				antigen.setMimotopes(rs.getString("mimotopes"));
				antigen.setTar_c_No(rs.getString("tar_c_No"));
				antigen.setTem_c_No(rs.getString("tem_c_No"));
				antigen.setSize_e(rs.getInt("size_e"));
				antigen.setRef(rs.getString("ref"));
				antigen.setPMID(rs.getString("PMID"));
				antigen.setPdblink(rs.getString("pdblink"));
				antigen.setPmlink(rs.getString("pmlink"));
				antigens.add(antigen);
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
		return antigens;
	}
	public List getProtein(){
		List proteins = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from protein";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Protein protein = new Protein();
				protein.setId(rs.getInt("id"));
				protein.setPdb_id(rs.getString("pdb_id"));
				protein.setBenchid(rs.getString("benchid"));
				protein.setEpitopes(rs.getString("epitopes"));
				protein.setMimotopes(rs.getString("mimotopes"));
				protein.setTar_c_No(rs.getString("tar_c_No"));
				protein.setTem_c_No(rs.getString("tem_c_No"));
				protein.setSize_e(rs.getInt("size_e"));
				protein.setRef(rs.getString("ref"));
				protein.setPMID(rs.getString("PMID"));
				protein.setPdblink(rs.getString("pdblink"));
				protein.setPmlink(rs.getString("pmlink"));
				proteins.add(protein);
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
		return proteins;
	}
	public boolean updateAntigen(Antigen antigen) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update antigen set pdb_id=?,benchid=?,epitopes=?,mimotopes=?,tar_c_No=?,tem_c_No=?,size_e=?,ref=?,PMID=?,pdblink=?,pmlink=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, antigen.getPdb_id());
			ps.setString(2, antigen.getBenchid());
			ps.setString(3, antigen.getEpitopes());
			ps.setString(4, antigen.getMimotopes());
			ps.setString(5, antigen.getTar_c_No());
			ps.setString(6, antigen.getTem_c_No());
			ps.setInt(7, antigen.getSize_e());
			ps.setString(8, antigen.getRef());
			ps.setString(9, antigen.getPMID());
			ps.setString(10, antigen.getPdblink());
			ps.setString(11, antigen.getPmlink());
			ps.setInt(12, antigen.getId());
			System.out.println(antigen.getId());
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
	public boolean deleteAntigenById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from antigen where id=?";
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
	public boolean addAntigen(Antigen antigen) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into antigen values(null,?,?,?,?,?,?,?,?,?,?,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(1, antigen.getPdb_id());//something wrong
			ps.setString(2, antigen.getBenchid());
			ps.setString(6, antigen.getEpitopes());
			ps.setString(3, antigen.getMimotopes());
			ps.setString(5, antigen.getTar_c_No());
			ps.setString(4, antigen.getTem_c_No());
			ps.setInt(7, antigen.getSize_e());
			ps.setString(8, antigen.getRef());
			ps.setString(9, antigen.getPMID());
			ps.setString(10, antigen.getPdblink());
			ps.setString(11, antigen.getPmlink());
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
	public boolean updateProtein(Protein protein) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update protein set pdb_id=?,benchid=?,epitopes=?,mimotopes=?,tar_c_No=?,tem_c_No=?,size_e=?,ref=?,PMID=?,pdblink=?,pmlink=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, protein.getPdb_id());
			ps.setString(2, protein.getBenchid());
			ps.setString(3, protein.getEpitopes());
			ps.setString(4, protein.getMimotopes());
			ps.setString(5, protein.getTar_c_No());
			ps.setString(6, protein.getTem_c_No());
			ps.setInt(7, protein.getSize_e());
			ps.setString(8, protein.getRef());
			ps.setString(9, protein.getPMID());
			ps.setString(10, protein.getPdblink());
			ps.setString(11, protein.getPmlink());
			ps.setInt(12, protein.getId());
			System.out.println(protein.getId());
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
	public boolean deleteProteinById(int Id){
	
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "delete from protein where id=?";
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
	public boolean addProtein(Protein protein) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "insert into protein values(null,?,?,?,?,?,?,?,?,?,?,?)";
			ps = dao.getCon().prepareStatement(sql);
			ps.setString(2, protein.getPdb_id());
			ps.setString(1, protein.getBenchid());
			ps.setString(6, protein.getEpitopes());
			ps.setString(3, protein.getMimotopes());
			ps.setString(5, protein.getTar_c_No());
			ps.setString(4, protein.getTem_c_No());
			ps.setInt(7, protein.getSize_e());
			ps.setString(8, protein.getRef());
			ps.setString(9, protein.getPMID());
			ps.setString(10, protein.getPdblink());
			ps.setString(11, protein.getPmlink());
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
