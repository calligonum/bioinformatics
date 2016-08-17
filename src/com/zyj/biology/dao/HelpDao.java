package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Help;

public interface HelpDao {
	public List getHelp();
	public boolean updateHelp(Help help);
}
