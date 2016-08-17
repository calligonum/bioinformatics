package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Datasets;
import com.zyj.biology.po.Tools;

public interface ResourceDao {
	public List getDatasets();
	public List getTools();
	public boolean updateDatasets(Datasets datasets);
	public boolean deleteDatasetsById(int Id);
	public boolean addDatasets(Datasets datasets);
	public boolean updateTools(Tools tools);
	public boolean deleteToolsById(int Id);
	public boolean addTools(Tools tools);
}
