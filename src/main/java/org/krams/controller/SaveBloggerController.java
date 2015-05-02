package org.krams.controller;

import org.krams.domain.Blogger;
import org.krams.domain.Reply;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/saveBlogger")
public class SaveBloggerController {

    @Autowired
    private DevilBrickService service;


    @RequestMapping(method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getReviews(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("firstName") String firstName,
            @ModelAttribute("lastName") String lastName,
            @ModelAttribute("emailId") String emailId,
            @ModelAttribute("userName") String userName,
            @ModelAttribute("password") String password
    ) {

        Blogger blogger = new Blogger();
        blogger.setFirstName(firstName);
        blogger.setLastName(lastName);
        blogger.setEmail(emailId);
        blogger.setUserName(userName);
        blogger.setPassword(password);


        service.createBlogger(blogger);

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("status","user created successfully. happy blogging.");
        return model;

    }

}
