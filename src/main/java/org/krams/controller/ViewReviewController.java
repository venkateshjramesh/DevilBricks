package org.krams.controller;

import org.krams.domain.Owner;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
public class ViewReviewController {

    @Autowired
    private DevilBrickService service;

    @RequestMapping("/viewReview")
	public ModelAndView Owner() {
        return new ModelAndView("viewReview");
	}

    @RequestMapping("/viewReview/{id}")
    public ModelAndView OwnerForId(@PathVariable("id") String id) {
        System.out.print("****************************" +  id);
        Owner owner =  service.findOne(id);

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("id",owner.getId()) ;
        model.put("firstName",owner.getFirstName()) ;
        model.put("lastName",owner.getLastName()) ;
        model.put("mobile",owner.getMobile()) ;
        model.put("email",owner.getEmail()) ;


        String plotNumber = "";
        String appartmentName = "";
        String doorNo = "";
        String floor = "";
        String streetName = "";
        String landmark = "";
        String area = "";
        String city = "";
        String taluk = "";
        String district = "";
        String state = "";
        String pinCode = "";

        if(owner.getPlotNumber() != null && !owner.getPlotNumber().trim().equals(""))
            plotNumber = "Plot No: " +owner.getPlotNumber() + ", ";
        if(owner.getAppartmentName() != null && !owner.getAppartmentName().trim().equals(""))
            appartmentName = owner.getAppartmentName() + ", ";
        if(owner.getDoorNo() != null && !owner.getDoorNo().trim().equals(""))
            doorNo = "Door No: " +owner.getDoorNo() + ", ";
        if(owner.getFloor() != null && !owner.getFloor().trim().equals(""))
            floor = "Floor No: " + owner.getFloor() + ", ";
        if(owner.getStreetName() != null && !owner.getStreetName().trim().equals(""))
            streetName = owner.getStreetName() + ", ";
        if(owner.getLandmark() != null && !owner.getLandmark().trim().equals(""))
            landmark = "LandMark: (" +owner.getLandmark() + "), ";
        if(owner.getArea() != null && !owner.getArea().trim().equals(""))
            area = owner.getArea() + ", ";
        if(owner.getCity() != null && !owner.getCity().trim().equals(""))
            city = owner.getCity() + "- ";
        if(owner.getTaluk() != null && !owner.getTaluk().trim().equals(""))
            taluk = "Taluk: " + owner.getTaluk() + ", ";
        if(owner.getDistrict() != null && !owner.getDistrict().trim().equals(""))
            district = "District Name: " + owner.getDistrict() + ", ";
        if(owner.getState() != null && !owner.getState().trim().equals(""))
            state = owner.getState() + ", ";
        if(owner.getPinCode() != null && !owner.getPinCode().trim().equals(""))
            pinCode = owner.getPinCode();

        model.put("address",plotNumber+appartmentName+doorNo+floor+streetName+landmark+area+taluk+district+state+city+pinCode) ;

        //model.put("reviewIds",owner.getReview());
        return new ModelAndView("viewReview",model);
    }
}
