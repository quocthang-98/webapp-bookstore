package com.webapp.model;

public class AuthorModel extends AbstractModel<AuthorModel>{
	private String name;
	private String nationality;
	
	private Integer isNameNotOK = 0;
	private Integer isNameNull = 0;
	private Integer isNameDublicate = 0;

	public Integer getIsNameNotOK() {
		return isNameNotOK;
	}
	public void setIsNameNotOK(Integer isNameNotOK) {
		this.isNameNotOK = isNameNotOK;
	}
	public Integer getIsNameNull() {
		return isNameNull;
	}
	public void setIsNameNull(Integer isNameNull) {
		this.isNameNull = isNameNull;
	}
	public Integer getIsNameDublicate() {
		return isNameDublicate;
	}
	public void setIsNameDublicate(Integer isNameDublicate) {
		this.isNameDublicate = isNameDublicate;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	
}
		