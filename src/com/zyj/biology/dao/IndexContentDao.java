package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Home;
import com.zyj.biology.po.News;

public interface IndexContentDao {
	public List getHome();
	public boolean updateHome(Home home,int id);
	public List getNewstitle();
	public News getContentbyid(int id);
}
