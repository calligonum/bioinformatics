package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Project;

public interface ProjectDao {
	public List getProject() ;
	public boolean updateProject(Project project);
	public boolean deleteProjectById(int Id);
	public boolean addProject(Project project);
}
