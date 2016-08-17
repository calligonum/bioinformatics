package com.zyj.biology.dao;

import java.util.List;

import com.zyj.biology.po.Download;

public interface DownloadDao {
	public List getDownload();
	public boolean updateDownload(Download download);
	public boolean deleteDownloadById(int Id);
	public boolean addDownload(Download download);
}
