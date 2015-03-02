package org.krams.controller;

import org.krams.domain.Owner;
import org.krams.domain.Review;
import org.krams.service.DevilBrickService;
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
@RequestMapping("/saveReview")
public class SaveReviewController {

    @Autowired
    private DevilBrickService service;


    @RequestMapping(method=RequestMethod.POST)
    public @ResponseBody ModelAndView create(
            HttpServletRequest request,
            HttpServletResponse response,
            @RequestParam String email,
            @RequestParam String mobile,
            @RequestParam String firstName,
            @RequestParam String lastName,
            @RequestParam String behaviour,
            @RequestParam String attitude,
            @RequestParam String ebBill) {


        Owner owner = new Owner();
        owner.setEmail(email);
        owner.setFirstName(firstName);
        owner.setLastName(lastName);
        owner.setMobile(mobile);

        Review review = new Review();
        review.setId(UUID.randomUUID().toString());
        review.setAttitudeDesc(attitude);
        review.setBehaviourDesc(behaviour);
        review.setEbBillDesc(ebBill);

        owner.setReview(review);

        service.createReview(review);
        service.create(owner);

        return new ModelAndView("writeReview","statusMessage","Details Successfully Inserted.");

    }

}