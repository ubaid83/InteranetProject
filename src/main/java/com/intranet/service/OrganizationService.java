package com.intranet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intranet.bean.OrganizationBean;
import com.intranet.dao.Organizationdao;
@Service
public class OrganizationService {
	@Autowired
	Organizationdao organizationdao;
	public int insertorganization(OrganizationBean organizationBean) {
		
		return organizationdao.insertorganization(organizationBean);
	}
	public List<OrganizationBean> getdataOrganization() {
		// TODO Auto-generated method stub
		return organizationdao.getdataOrganization();
	}
	public int organizationDeleteByid(String id) {
	
		return organizationdao.organizationDeleteByid(id);
	}

	public int organizationEditByid(String id, String organizationName) {
		
		System.out.println("service :::::::::::"+id);
		
		return organizationdao.organizationEditByid(id,organizationName);
	}

}
