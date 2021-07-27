package com.itwillds.bean;

public class Phone {
	
	private String model;
	private String telNum;
	
	// alt + shift + s + r
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getTelNum() {
		return telNum;
	}
	public void setTelNum(String telNum) {
		this.telNum = telNum;
	}
	
	@Override
	public String toString() {
		return "Phone [model=" + model + ", telNum=" + telNum + "]";
	}

}
