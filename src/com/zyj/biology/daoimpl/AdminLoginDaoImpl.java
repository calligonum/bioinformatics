package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.AdminLoginDao;
import com.zyj.biology.exception.*;
import com.zyj.biology.po.Admin;

public class AdminLoginDaoImpl implements AdminLoginDao {

	public boolean login(Admin admin) {
		DbUtil db = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			db = new DbUtil();
			String sql = "select * from admin where name=?";
			ps = db.getCon().prepareStatement(sql);
			ps.setString(1, admin.getName());
			rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getString("password").equals(admin.getPassword())) {
					return true;
				} else {
					throw new PasswordError("�������");
				}
			} else {
				throw new NameNotFound("�˺Ŵ���");
			}
		} catch(NameNotFound nnf) {
			throw nnf;
		} catch (PasswordError pe) {
			throw pe;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				db.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	public boolean updatePassword(Admin admin) {
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		String sql = "update admin set password=? where name=?";
		try {
			daoUtil = new DbUtil();
			ps = daoUtil.getCon().prepareStatement(sql);
			ps.setString(1, admin.getPassword());
			ps.setString(2, admin.getName());
			int i = ps.executeUpdate();
			if(i != 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				daoUtil.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
}
