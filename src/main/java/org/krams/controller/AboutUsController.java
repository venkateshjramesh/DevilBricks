package org.krams.controller;

import org.krams.domain.Role;
import org.krams.domain.User;
import org.krams.dto.UserListDto;
import org.krams.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/aboutUs")
public class AboutUsController {

	@RequestMapping
	public String getUsersPage() {
		return "aboutUs";
	}
	

}
