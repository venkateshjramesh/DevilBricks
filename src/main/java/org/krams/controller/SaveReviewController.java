package org.krams.controller;

import org.krams.domain.Owner;
import org.krams.domain.Review;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
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
            @ModelAttribute("id") String id,
            @ModelAttribute("email") String email,
            @ModelAttribute("mobile") String mobile,
            @ModelAttribute("firstName") String firstName,
            @ModelAttribute("lastName") String lastName,
            @ModelAttribute("plotNumber") String plotNumber,
            @ModelAttribute("appartmentName") String appartmentName,
            @ModelAttribute("doorNo") String doorNo,
            @ModelAttribute("floor") String floor,
            @ModelAttribute("streetName") String streetName,
            @ModelAttribute("landmark") String landmark,
            @ModelAttribute("area") String area,
            @ModelAttribute("city") String city,
            @ModelAttribute("taluk") String taluk,
            @ModelAttribute("district") String district,
            @ModelAttribute("state") String state,
            @ModelAttribute("pinCode") String pinCode,
            @ModelAttribute("behaviour") String behaviour,
            @ModelAttribute("attitude") String attitude,
            @ModelAttribute("ebBill") String ebBill,
            @ModelAttribute("maintainance") String maintainance,
            @ModelAttribute("guest") String guest,
            @ModelAttribute("hiddenCost") String hiddenCost,
            @ModelAttribute("water") String water,
            @ModelAttribute("parking") String parking,
            @ModelAttribute("otherComments") String otherComments,
            @ModelAttribute("suggestion") String suggestion) {

        System.out.print("/////////////////////id///////////////:::" + id);

        Owner owner = new Owner();
        Review review  = new Review();
        review.setId(UUID.randomUUID().toString());
        review.setBehaviour(behaviour);
        review.setAttitude(attitude);
        review.setEbBill(ebBill);
        review.setMaintainance(maintainance);
        review.setGuest(guest);
        review.setHiddenCost(hiddenCost);
        review.setWater(water);
        review.setParking(parking);
        review.setOtherComments(otherComments);
        review.setSuggestion(suggestion);

        if(id != null && id.equals("")){
            //personal details
            owner.setEmail(email);
            owner.setFirstName(firstName);
            owner.setLastName(lastName);
            owner.setMobile(mobile);

            //addressd details
            owner.setPlotNumber(plotNumber);
            owner.setAppartmentName(appartmentName);
            owner.setDoorNo(doorNo);
            owner.setFloor(floor);
            owner.setStreetName(streetName);
            owner.setLandmark(landmark);
            owner.setArea(area);
            owner.setCity(city);
            owner.setTaluk(taluk);
            owner.setDistrict(district);
            owner.setState(state);
            owner.setPinCode(pinCode);

            List<Review> reviewList = new ArrayList<Review>();

            reviewList.add(review);
            owner.setReview(reviewList);
        }else{
            owner = service.findOne(id);
            List<Review> reviewList = owner.getReview();
            reviewList.add(review);
            owner.setReview(reviewList);

        }


        service.createReview(review);
        service.create(owner);
        id=null;
        return new ModelAndView("writeReview","statusMessage","Details Successfully Inserted.");

    }

}
