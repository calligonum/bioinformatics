package com.zyj.biology.po;

public class Team {
	private int id;
	private String name;
	private String professional;
	private String study;
	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setProfessional(String professional) {
		this.professional = professional;
	}
	public String getProfessional() {
		return professional;
	}
	public void setStudy(String study) {
		this.study = study;
	}
	public String getStudy() {
		return study;
	}
}
