package org.krams.controller;

import org.krams.domain.Owner;
import org.krams.domain.Role;
import org.krams.domain.User;
import org.krams.service.DevilBrickService;
import org.krams.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/writeReview")
public class WriteReviewController {

    @Autowired
    private DevilBrickService service;

	@RequestMapping
	public String getUsersPage() {
		return "writeReview";
	}

    @RequestMapping(value="/create", method=RequestMethod.POST)
    public @ResponseBody Owner create(
            @RequestParam String email,
            @RequestParam String mobile,
            @RequestParam String firstName,
            @RequestParam String lastName) {


        Owner owner = new Owner();
        owner.setEmail(email);
        owner.setFirstName(firstName);
        owner.setLastName(lastName);
        owner.setMobile(mobile);

        return service.create(owner);

    }

}
