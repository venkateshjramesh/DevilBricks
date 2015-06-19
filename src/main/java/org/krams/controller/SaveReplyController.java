package org.krams.controller;

import org.krams.domain.Owner;
import org.krams.domain.Reply;
import org.krams.domain.Review;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
@RequestMapping("/saveReply")
public class SaveReplyController {

    @Autowired
    private DevilBrickService service;


    @RequestMapping(method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getReviews(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("id") String id,
            @ModelAttribute("idMainValue") String idMainValue,
            @ModelAttribute("displayName") String displayName,
            @ModelAttribute("replyText") String replyText,
            @ModelAttribute("userId") String userId,
            @ModelAttribute("replyToName") String replyToName
    ) {
        System.out.print("///////////////////sagereply//id///////////////:::" + id);

        Reply reply  = new Reply();
        reply.setId(UUID.randomUUID().toString());
        reply.setDisplayName(displayName);
        reply.setComments(replyText);
        reply.setUserId(userId);
        reply.setCreationDate(new Date());
        reply.setParentId(id);
        reply.setVoteUp("0");
        reply.setVoteDown("0");
        reply.setReplyToName(replyToName);

        service.updateReview(reply,idMainValue);

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("reviewList",reply);
        return model;

    }

}
