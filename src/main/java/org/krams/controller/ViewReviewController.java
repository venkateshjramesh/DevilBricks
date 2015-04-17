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
        //model.put("reviewIds",owner.getReview());
        return new ModelAndView("viewReview",model);
    }
}
