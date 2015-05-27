package org.krams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/termsAndConditions")
public class TermsAndConditionsController {

	@RequestMapping
	public String getUsersPage() {
		return "termsAndConditions";
	}
	

}
