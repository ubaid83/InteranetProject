package com.intranet.intranetController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntranetController {
	@RequestMapping("/home")
	public String home() {
		System.out.println("intranet hit project ");
		
		return "index";
		
		
		
	}
	
	
	
	@RequestMapping("/depertementform")
	public String createDepertement() {
		System.out.println("intranet hit project ");
		
		return "depertement";
		
		
		
	}
	
	@RequestMapping("/createOrganizationform")
	public String createOrganization() {
		System.out.println("intranet hit project ");
		
		return "organization";
	
	}

}
