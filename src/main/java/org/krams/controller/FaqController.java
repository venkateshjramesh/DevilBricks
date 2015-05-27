package org.krams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/faq")
public class FaqController {

	@RequestMapping
	public String getUsersPage() {
		return "faq";
	}
	

}
