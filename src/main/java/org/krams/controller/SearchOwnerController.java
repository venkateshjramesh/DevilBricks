package org.krams.controller;

import org.krams.domain.Owner;
import org.krams.domain.Reply;
import org.krams.domain.Review;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller

public class SearchOwnerController {

    @Autowired
    private DevilBrickService service;

    @RequestMapping(value = "/searchOwner",method=RequestMethod.GET)
    public @ResponseBody Map<String, Object> create(
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

        System.out.print("------------" + ownerList.get(0).getFirstName());

//        return new ModelAndView(null,"ownerList",ownerList);
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("ownerList",ownerList);

        return model;


    }

    @RequestMapping(value = "/searchReviewForId",method=RequestMethod.GET)
    public @ResponseBody Map<String, Object> getReviews(
            HttpServletRequest request,
            HttpServletResponse response,
            @RequestParam String id
    ) {
        Owner owner = service.findOne(id);
        System.out.print("++++++++++++++++++++++++++" + owner.getFirstName());
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("reviewList",owner.getReview());
        return model;

    }



    @RequestMapping(value = "/searchVoteForId",method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getVotes(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("id") String id
    ) {

        Owner owner = service.findOne(id);
        System.out.print("++++++++++++++++++++++++++" + owner.getFirstName());
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("vote_up",owner.getVoteUp());
        model.put("vote_down",owner.getVoteDown());
        return model;

    }

    @RequestMapping(value = "/changeVoteForId",method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> setVotes(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("id") String id,
            @ModelAttribute("vote") String vote
    ) {

        Owner owner = service.findOne(id);
        System.out.print("++++++++++++++++++++++++++" + owner.getFirstName());

        if(vote.equals("up")) {
            owner.setVoteUp(String.valueOf(Integer.parseInt(owner.getVoteUp()) + 1));
        }else if(vote.equals("down")){
            owner.setVoteDown(String.valueOf(Integer.parseInt(owner.getVoteDown()) + 1));
        }

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("vote_up",owner.getVoteUp());
        model.put("vote_down",owner.getVoteDown());
        service.create(owner);
        return model;

    }


}
