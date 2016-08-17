package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Classes;
import com.zyj.biology.po.News;

public interface ClassDao {
	public List getClasses();
	public boolean updateClasses(Classes classes);
	public boolean deleteClassesById(int Id);
	public boolean addClasses(Classes classes);
	public boolean addNews(News news);
	public boolean updateNews(News news);
	public boolean deletenewsById(int id);
}
