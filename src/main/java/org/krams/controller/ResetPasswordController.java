package org.krams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/resetPassword")
public class ResetPasswordController {

	@RequestMapping
	public String getUsersPage() {
		return "resetPassword";
	}
	

}
