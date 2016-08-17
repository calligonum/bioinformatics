package com.zyj.biology.dao;
import java.util.List;

import com.zyj.biology.po.News;


public interface NewsDao {

	public boolean addNews(News news);



	public List getNews(int id);
}
