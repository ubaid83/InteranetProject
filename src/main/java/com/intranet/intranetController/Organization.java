package com.intranet.intranetController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.function.EntityResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.intranet.bean.OrganizationBean;
import com.intranet.service.OrganizationService;

@RestController
public class Organization {

	@Autowired
	OrganizationService organizationService;

	@PostMapping("organizationinsert")
	public ResponseEntity<?> organizationinsert(@RequestBody OrganizationBean organizationBean) {

		int status = organizationService.insertorganization(organizationBean);

		System.out.println("organizationbeanyuuytytyuyuyu" + organizationBean);

		return ResponseEntity.ok(400);

	}

	@PostMapping("getOrganizationData")
	public ResponseEntity<?> getdataOrganization() {

		List<OrganizationBean> organizationBean = organizationService.getdataOrganization();

		Gson gson = new Gson();
		String json = gson.toJson(organizationBean);

		System.out.println("organizationbeanlist " + json);

		return ResponseEntity.ok(json);

	}

	@PostMapping("deleteOrganization")
	public ResponseEntity<?> organizationDelete(@RequestParam("id") String id) {

		System.out.println("id----------------" + id);

		int status = organizationService.organizationDeleteByid(id);
		if (status > 0) {

			return ResponseEntity.ok(200);

		}

		return ResponseEntity.ok(400);

	}

	@PostMapping("/editOrganization")
	public ResponseEntity<?> organizationEdit(@RequestBody OrganizationBean organizationBeanan) {

		System.out.println("organizationName" + organizationBeanan);

		System.out.println("my page is json convert the data" + organizationBeanan);

      	System.out.println("id------------edit page ----"+organizationBeanan.getId());
		
		  
		  int status = organizationService.organizationEditByid(organizationBeanan.getId(),organizationBeanan.getOrganizationName()); 
		  System.out.println("print the status in jsp "+ status);
		  
		  if (status>0) {
		  
		  return ResponseEntity.ok(200);
		  
		  
		  }
		  
		 

		return ResponseEntity.ok(400);

	}

}
