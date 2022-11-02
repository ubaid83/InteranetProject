package com.intranet.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.intranet.bean.OrganizationBean;
@Repository
public class Organizationdao {

	@Autowired
	JdbcTemplate jdbctemplet;
	public int insertorganization(OrganizationBean organizationBean) {
		String sql ="INSERT INTO organization (organizationName) values (?)";
		return jdbctemplet.update(sql,organizationBean.getOrganizationName());
	}
	public List<OrganizationBean> getdataOrganization() {
		String sql ="SELECT organizationName,id,createdDate FROM organization where active ='Y' ";
		return jdbctemplet.query(sql, new BeanPropertyRowMapper(OrganizationBean.class));
	}
	public int organizationDeleteByid(String id) {
		System.out.println("dao ;;;;;;;;;;;;;"+id );
		String sql ="UPDATE organization SET active ='N' where id =? ";
		return jdbctemplet.update(sql,id);
	}
	
	public int organizationEditByid(String id, String organizationName) {
		System.out.println("organizationName Daooooooo::::::"+organizationName);
		
		System.out.println("Update the data "+ id);
		 String sql ="UPDATE organization SET organizationName =? where id =?";

		return jdbctemplet.update(sql, new Object[] {organizationName, id});
	}
}
