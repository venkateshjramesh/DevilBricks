package org.krams.controller;

import org.krams.domain.Owner;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller

public class WriteReviewController {

    @Autowired
    private DevilBrickService service;

    @RequestMapping("/writeReview")
	public ModelAndView Owner() {
        return new ModelAndView("writeReview");
	}

    @RequestMapping("/writeReview/{id}")
    public ModelAndView OwnerForId(@PathVariable("id") String id) {
        System.out.print("****************************" +  id);
        Owner owner =  service.findOne(id);

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("id",owner.getId()) ;
        model.put("firstName",owner.getFirstName()) ;
        model.put("lastName",owner.getLastName()) ;
        model.put("mobile",owner.getMobile()) ;
        model.put("email",owner.getEmail()) ;
        model.put("plotNumber",owner.getPlotNumber()) ;
        model.put("appartmentName",owner.getAppartmentName()) ;
        model.put("doorNo",owner.getDoorNo()) ;
        model.put("floor",owner.getFloor()) ;
        model.put("streetName",owner.getStreetName()) ;
        model.put("landmark",owner.getLandmark()) ;
        model.put("area",owner.getArea()) ;
        model.put("city",owner.getCity()) ;
        model.put("taluk",owner.getTaluk()) ;
        model.put("district",owner.getDistrict()) ;
        model.put("state",owner.getState()) ;
        model.put("pinCode",owner.getPinCode()) ;
        return new ModelAndView("writeReview",model);
    }

}
