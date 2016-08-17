package com.zyj.biology.po;

public class Protein {
	private int id;
	private String benchid;
	private String pdb_id;
	private String mimotopes;
	private String tem_c_No;
	private String tar_c_No;
	private String epitopes;
	private int size_e;
	private String ref;
	private String PMID;
	private String pdblink;
	private String pmlink;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBenchid() {
		return benchid;
	}
	public void setBenchid(String benchid) {
		this.benchid = benchid;
	}
	public String getPdb_id() {
		return pdb_id;
	}
	public void setPdb_id(String pdbId) {
		pdb_id = pdbId;
	}
	public String getMimotopes() {
		return mimotopes;
	}
	public void setMimotopes(String mimotopes) {
		this.mimotopes = mimotopes;
	}
	public String getTem_c_No() {
		return tem_c_No;
	}
	public void setTem_c_No(String temCNo) {
		tem_c_No = temCNo;
	}
	public String getTar_c_No() {
		return tar_c_No;
	}
	public void setTar_c_No(String tarCNo) {
		tar_c_No = tarCNo;
	}
	public String getEpitopes() {
		return epitopes;
	}
	public void setEpitopes(String epitopes) {
		this.epitopes = epitopes;
	}
	public int getSize_e() {
		return size_e;
	}
	public void setSize_e(int sizeE) {
		size_e = sizeE;
	}
	public String getRef() {
		return ref;
	}
	public void setRef(String ref) {
		this.ref = ref;
	}
	public String getPMID() {
		return PMID;
	}
	public void setPMID(String pMID) {
		PMID = pMID;
	}
	public String getPdblink() {
		return pdblink;
	}
	public void setPdblink(String pdblink) {
		this.pdblink = pdblink;
	}
	public String getPmlink() {
		return pmlink;
	}
	public void setPmlink(String pmlink) {
		this.pmlink = pmlink;
	}
}
