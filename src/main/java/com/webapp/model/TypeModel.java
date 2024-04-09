package com.webapp.model;

public class TypeModel extends AbstractModel<TypeModel>{
	private String name;
	private Long genreId;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getGenreId() {
		return genreId;
	}
	public void setGenreId(Long genreId) {
		this.genreId = genreId;
	}

	
}
		