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
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/searchOwner")
public class SearchOwnerController {

    @Autowired
    private DevilBrickService service;


    @RequestMapping(method=RequestMethod.GET)
    public @ResponseBody ModelAndView create(
            HttpServletRequest request,
            HttpServletResponse response,
            @RequestParam String id,
            @RequestParam String email,
            @RequestParam String mobile,
            @RequestParam String firstName,
            @RequestParam String lastName
           ) {


        Owner owner = new Owner();

        if(id != null && !id.equals(""))
            owner.setId(id);
        else
            owner.setId("");
        if(email != null && !email.equals(""))
            owner.setEmail(email);
        if(firstName != null && !firstName.equals(""))
            owner.setFirstName(firstName);
        if(lastName != null && !lastName.equals(""))
            owner.setLastName(lastName);
        if(mobile != null && !mobile.equals(""))
            owner.setMobile(mobile);

        List<Owner> ownerList = service.findByParameters(owner);


        return new ModelAndView("searchReview","ownerList",ownerList);

    }

}
