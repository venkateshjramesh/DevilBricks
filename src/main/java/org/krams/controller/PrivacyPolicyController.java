package org.krams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/privacyPolicy")
public class PrivacyPolicyController {

	@RequestMapping
	public String getUsersPage() {
		return "privacyPolicy";
	}
	

}
