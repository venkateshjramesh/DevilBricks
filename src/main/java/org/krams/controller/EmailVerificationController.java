package org.krams.controller;

import org.krams.domain.Blogger;
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
public class EmailVerificationController {

    @Autowired
    private DevilBrickService service;

    @RequestMapping("/verifyEmail")
    public ModelAndView Owner() {
        return new ModelAndView("verifyEmail");
    }

    @RequestMapping("/verifyEmail/{id}")
    public ModelAndView verifyEmail(@PathVariable("id") String id) {

        Map<String, Object> model = new HashMap<String, Object>();
        Blogger blogger = service.findOneBlogger(id);

        if(blogger == null){
            model.put("status","Some Internal error occurred. Please try again later.") ;
            return new ModelAndView("verifyEmail",model);
        }
        else{

            if(blogger.getStatus().equals("A")){
                model.put("status","Some Internal error occurred. Please try again later.") ;
                return new ModelAndView("verifyEmail",model);
            }
            blogger.setStatus("A");
            service.updateBlogger(blogger);
            model.put("status","User verified successfully. Happy Blogging.") ;
            return new ModelAndView("verifyEmail",model);
        }

        //model.put("reviewIds",owner.getReview());

    }
}
