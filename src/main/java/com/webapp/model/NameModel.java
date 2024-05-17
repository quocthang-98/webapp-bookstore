package com.webapp.model;

import java.util.ArrayList;
import java.util.List;

public class NameModel {
	private String name;
	private List<String> nameList = new ArrayList<>();
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<String> getNameList() {
		return nameList;
	}
	public void setNameList(List<String> nameList) {
		this.nameList = nameList;
	}
	
	
}
