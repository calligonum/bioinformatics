package com.zyj.biology.po;

public class Help {
	private int id;
	private String introduction;
	private String inclusion;
	private String acknowledgments;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getInclusion() {
		return inclusion;
	}
	public void setInclusion(String inclusion) {
		this.inclusion = inclusion;
	}
	public void setAcknowledgments(String acknowledgments) {
		this.acknowledgments = acknowledgments;
	}
	public String getAcknowledgments() {
		return acknowledgments;
	}
	
}
