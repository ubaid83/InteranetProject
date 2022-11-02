package com.intranet.bean;

public class OrganizationBean {

	private String id ;
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

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
		return "OrganizationBean [id=" + id + ", organizationName=" + organizationName + ", createdDate=" + createdDate
				+ "]";
	}


	


	
	
}
