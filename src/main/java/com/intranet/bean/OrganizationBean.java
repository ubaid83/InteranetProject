package com.intranet.bean;

public class OrganizationBean {

	
	private String organizationName;
	
    private String createdDate;
    

 
	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getOrganizationName() {
		return organizationName;
	}

	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}

	@Override
	public String toString() {
		return "OrganizationBean [organizationName=" + organizationName + ", createdDate=" + createdDate + "]";
	}


	


	
	
}
