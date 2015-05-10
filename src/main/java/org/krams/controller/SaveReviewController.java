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
        review.setBehaviour(behaviour.trim().equals("") ? null : behaviour);
        review.setAttitude(attitude.trim().equals("") ? null : attitude);
        review.setEbBill(ebBill.trim().equals("") ? null : ebBill);
        review.setMaintainance(maintainance.trim().equals("") ? null : maintainance);
        review.setGuest(guest.trim().equals("") ? null : guest);
        review.setHiddenCost(hiddenCost.trim().equals("") ? null : hiddenCost);
        review.setWater(water.trim().equals("") ? null : water);
        review.setParking(parking.trim().equals("") ? null : parking);
        review.setOtherComments(otherComments.trim().equals("") ? null : otherComments);
        review.setSuggestion(suggestion.trim().equals("") ? null : suggestion);
        review.setVoteDown("0");
        review.setVoteUp("0");

        if(id != null && id.equals("")){
            //personal details
            owner.setEmail(email.trim().equals("") ? null : email);
            owner.setFirstName(firstName.trim().equals("") ? null : firstName);
            owner.setLastName(lastName.trim().equals("") ? null : lastName);
            owner.setMobile(mobile.trim().equals("") ? null : mobile);

            //addressd details
            owner.setPlotNumber(plotNumber.trim().equals("") ? null : plotNumber);
            owner.setAppartmentName(appartmentName.trim().equals("") ? null : appartmentName);
            owner.setDoorNo(doorNo.trim().equals("") ? null : doorNo);
            owner.setFloor(floor.trim().equals("") ? null : floor);
            owner.setStreetName(streetName.trim().equals("") ? null : streetName);
            owner.setLandmark(landmark.trim().equals("") ? null : landmark);
            owner.setArea(area.trim().equals("") ? null : area);
            owner.setCity(city.trim().equals("") ? null : city);
            owner.setTaluk(taluk.trim().equals("") ? null : taluk);
            owner.setDistrict(district.trim().equals("") ? null : district);
            owner.setState(state.trim().equals("") ? null : state);
            owner.setPinCode(pinCode.trim().equals("") ? null : pinCode);

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
