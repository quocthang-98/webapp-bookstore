package com.webapp.model;

public class PublisherModel extends AbstractModel<PublisherModel>{
	private String name;
	private String headquarterLocation;
	
	public String getHeadquarterLocation() {
		return headquarterLocation;
	}
	public void setHeadquarterLocation(String headquarterLocation) {
		this.headquarterLocation = headquarterLocation;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	
}
		