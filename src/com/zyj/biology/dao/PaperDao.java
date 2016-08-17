package com.zyj.biology.dao;

import java.util.List;


import com.zyj.biology.po.Papers;
import com.zyj.biology.po.Year;

public interface PaperDao {
	
	public boolean updatePaper(Papers papers,int id);
	public boolean deletePaperById(int Id);

	public List getPaperbyyear(int year);
	public boolean addYear(Year year);
	public boolean addPaperbyyear(Papers papers,String y);
	public int getidbyyear(String y);
}
