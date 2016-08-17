package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Contact;

public interface ContactDao {
	public List getContact();
	public boolean updateContact(Contact contact);
}
