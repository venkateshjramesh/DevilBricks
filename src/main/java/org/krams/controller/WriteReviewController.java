package org.krams.controller;

import org.krams.domain.Owner;
import org.krams.domain.Review;
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
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.UUID;

@Controller
@RequestMapping("/writeReview")
public class WriteReviewController {

    @Autowired
    private DevilBrickService service;

	@RequestMapping
	public ModelAndView Owner() {
        return new ModelAndView("writeReview");
	}

}
