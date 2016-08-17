package com.zyj.biology.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zyj.biology.common.DbUtil;
import com.zyj.biology.dao.ContactDao;
import com.zyj.biology.po.Contact;



public class ContactDaoImpl implements ContactDao {
	public List getContact() {
		List contacts = new ArrayList();
		DbUtil daoUtil = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = null;
		try {
			daoUtil = new DbUtil();
			sql = "select * from contact";
			ps = daoUtil.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Contact contact = new Contact();
				contact.setId(rs.getInt("id"));
				contact.setContent(rs.getString("content"));
				contact.setEmail(rs.getString("email"));
				contacts.add(contact);
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
		return contacts;
	}
	public boolean updateContact(Contact contact) {
		DbUtil dao = null;
		PreparedStatement ps = null;
		String sql = "";
		try {
			dao = new DbUtil();
			sql = "update contact set content=?,email=? where id=?";
			ps = dao.getCon().prepareStatement(sql);		
			ps.setString(1, contact.getContent());
			ps.setString(2, contact.getEmail());
			ps.setInt(3, contact.getId());
			System.out.println(contact.getId());
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
