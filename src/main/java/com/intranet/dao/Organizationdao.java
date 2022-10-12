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
		String sql ="SELECT * FROM organization";
		return jdbctemplet.query(sql, new BeanPropertyRowMapper(OrganizationBean.class));
	}

}
