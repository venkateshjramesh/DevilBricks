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
@RequestMapping("/saveReview")
public class SaveReviewController {

    @Autowired
    private DevilBrickService service;


    @RequestMapping(method=RequestMethod.POST)
    public @ResponseBody ModelAndView create(
            HttpServletRequest request,
            HttpServletResponse response,
            @RequestParam String id,
            @RequestParam String email,
            @RequestParam String mobile,
            @RequestParam String firstName,
            @RequestParam String lastName,
            @RequestParam String plotNumber,
            @RequestParam String appartmentName,
            @RequestParam String doorNo,
            @RequestParam String floor,
            @RequestParam String streetName,
            @RequestParam String landmark,
            @RequestParam String area,
            @RequestParam String city,
            @RequestParam String taluk,
            @RequestParam String district,
            @RequestParam String state,
            @RequestParam String pinCode,
            @RequestParam String behaviour,
            @RequestParam String attitude,
            @RequestParam String ebBill,
            @RequestParam String maintainance,
            @RequestParam String guest,
            @RequestParam String hiddenCost,
            @RequestParam String water,
            @RequestParam String parking,
            @RequestParam String otherComments,
            @RequestParam String suggestion) {


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

        return new ModelAndView("writeReview","statusMessage","Details Successfully Inserted.");

    }

}
