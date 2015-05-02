package org.krams.controller;

import org.krams.domain.Blogger;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/loginBlogger")
public class LoginController {

    @Autowired
    private DevilBrickService service;


    @RequestMapping(method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getReviews(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("userName") String userName,
            @ModelAttribute("password") String password
    ) {

        Blogger blogger = new Blogger();

        blogger.setUserName(userName);
        blogger.setPassword(password);


        List<Blogger> bloggerList = service.checkBlogger(blogger);

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("bloggerList",bloggerList);
        return model;

    }

}
