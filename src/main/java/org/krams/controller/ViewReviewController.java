package org.krams.controller;

import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/viewReview")
public class ViewReviewController {

    @Autowired
    private DevilBrickService service;

	@RequestMapping
	public ModelAndView Owner() {
        return new ModelAndView("viewReview");
	}

}
