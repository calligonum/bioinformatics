package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Antigen;
import com.zyj.biology.po.Protein;

public interface BenchmarkDao {
	public List getAntigen();
	public List getProtein();
	public boolean updateAntigen(Antigen antigen); 
	public boolean deleteAntigenById(int Id);
	public boolean addAntigen(Antigen antigen);
	public boolean updateProtein(Protein protein) ;
	public boolean deleteProteinById(int Id);
	public boolean addProtein(Protein protein);
}
