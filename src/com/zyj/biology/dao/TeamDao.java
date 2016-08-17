package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Team;

public interface TeamDao {
	public List getTeam() ;
	public boolean updateTeam(Team team,int id);
	public boolean deleteTeamById(int Id);
	public boolean addTeam(Team team);
}
