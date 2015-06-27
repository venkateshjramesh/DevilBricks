package org.krams.controller;

import org.krams.domain.Blogger;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/forgotPassword")
public class PasswordController {

    @Autowired
    private DevilBrickService service;



    @RequestMapping(method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getReviews(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("passwordEmail") String passwordEmail
    ) throws MessagingException {

        Blogger blogger = service.findByEmail(passwordEmail);
        Map<String, Object> model = new HashMap<String, Object>();
        if(blogger==null){
            model.put("failure","The E-Mail Id id not match any records in our Database");
            return model;
        }

            service.sendMail(null,"DevilBricksTeam",passwordEmail,blogger);
        model.put("success","Please check your Email Id for your password details");
        return model;

    }

}
