package com.intranet.intranetController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.function.EntityResponse;

import com.google.gson.Gson;
import com.intranet.bean.OrganizationBean;
import com.intranet.service.OrganizationService;

@RestController
public class Organization {
	
	@Autowired
	OrganizationService organizationService;
    @PostMapping("organizationinsert")
	public ResponseEntity<?> organizationinsert(@RequestBody OrganizationBean organizationBean ){
	  
	  int status =organizationService.insertorganization(organizationBean);
	  
	  
		
		System.out.println("organizationbeanyuuytytyuyuyu" +organizationBean);
		
		
		
		return ResponseEntity.ok(400); 
		
		
		
	}
  
  
    @PostMapping("getOrganizationData")
   	public ResponseEntity<?> getdataOrganization(){
   	  
   	 List <OrganizationBean> organizationBean= organizationService.getdataOrganization();
   	  
   	Gson gson = new Gson();
	String json = gson.toJson(organizationBean);
	
   		
   		System.out.println("organizationbeanlist " +json);
   		
   		
   		
   		return ResponseEntity.ok(json); 
  
	
    }
}
