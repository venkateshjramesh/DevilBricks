package org.krams.controller;

import org.krams.domain.*;
import org.krams.service.DevilBrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller

public class SearchOwnerController {

    @Autowired
    private DevilBrickService service;

    @RequestMapping(value = "/searchOwner",method=RequestMethod.GET)
    public @ResponseBody Map<String, Object> create(
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
            @RequestParam String pinCode
           ) {


        Owner owner = new Owner();

        if(id != null && !id.equals(""))
            owner.setId(id);
        else
            owner.setId("");
        if(email != null && !email.equals(""))
            owner.setEmail(email);
        else
            owner.setEmail("");
        if(firstName != null && !firstName.equals(""))
            owner.setFirstName(firstName);
        else
            owner.setFirstName("");
        if(lastName != null && !lastName.equals(""))
            owner.setLastName(lastName);
        else
            owner.setLastName("");
        if(mobile != null && !mobile.equals(""))
            owner.setMobile(mobile);
        else
            owner.setMobile("");
        if(plotNumber != null && !plotNumber.equals(""))
            owner.setPlotNumber(plotNumber);
        else
            owner.setPlotNumber("");
        if(id != null && !id.equals(""))
            owner.setId(id);
        else
            owner.setId("");
        if(appartmentName != null && !appartmentName.equals(""))
            owner.setAppartmentName(appartmentName);
        else
            owner.setAppartmentName("");
        if(doorNo != null && !doorNo.equals(""))
            owner.setDoorNo(doorNo);
        else
            owner.setDoorNo("");
        if(floor != null && !floor.equals(""))
            owner.setFloor(floor);
        else
            owner.setFloor("");
        if(streetName != null && !streetName.equals(""))
            owner.setStreetName(streetName);
        else
            owner.setStreetName("");
        if(landmark != null && !landmark.equals(""))
            owner.setLandmark(landmark);
        else
            owner.setLandmark("");
        if(area != null && !area.equals(""))
            owner.setArea(area);
        else
            owner.setArea("");
        if(city != null && !city.equals(""))
            owner.setCity(city);
        else
            owner.setCity("");
        if(taluk != null && !taluk.equals(""))
            owner.setTaluk(taluk);
        else
            owner.setTaluk("");
        if(district != null && !district.equals(""))
            owner.setDistrict(district);
        else
            owner.setDistrict("");
        if(state != null && !state.equals(""))
            owner.setState(state);
        else
            owner.setState("");
        if(pinCode != null && !pinCode.equals(""))
            owner.setPinCode(pinCode);
        else
            owner.setPinCode("");

        Map<String, Object> model = new HashMap<String, Object>();

       /* Long count = service.findCountByParameters(owner);
        model.put("count",count);

        if(count > 500){
            return model;
        }*/

        List<Owner> ownerList = service.findByParameters(owner);
        //System.out.print("------------" + ownerList.get(0).getFirstName());

//        return new ModelAndView(null,"ownerList",ownerList);
        model.put("ownerList",ownerList);


        return model;


    }

    @RequestMapping(value = "/searchReviewForId",method=RequestMethod.GET)
    public @ResponseBody Map<String, Object> getReviews(
            HttpServletRequest request,
            HttpServletResponse response,
            @RequestParam String id
    ) {
        Owner owner = service.findOne(id);
        System.out.print("++++++++++++++++++++++++++" + owner.getFirstName());
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("reviewList",owner.getReview());
        return model;

    }



    @RequestMapping(value = "/searchVoteForId",method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getVotes(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("id") String id   ,
            @ModelAttribute("parentId") String parentId,
            @ModelAttribute("userId") String userId
    ) {
        Map<String, Object> model = new HashMap<String, Object>();

        if(id.trim().split("_")[0].equals("span12")) {
            Review review = service.findOneReview(id.trim().split("_")[1]);
            //get from history
            List<RatingHistory> ratingHistory = service.findByParameters(userId,review.getId());
            if(ratingHistory != null && ratingHistory.size() > 0)
                model.put("exists","true");
            else
                model.put("exists","false");

            model.put("vote_up",review.getVoteUp());
            model.put("vote_down",review.getVoteDown());
        }else if(id.trim().split("_")[0].equals("span11")) {
            Review review = service.findOneReview(parentId);
            List<Reply> replyList = review.getReplies();

            for (int i = 0; i < replyList.size(); i++) {
                Reply reply = replyList.get(i);
                System.out.print("*********************************************" + reply.getDisplayName());
                if (reply.getId().trim().equals(id.trim().split("_")[1])) {
                    //get from history
                    List<RatingHistory> ratingHistory = service.findByParameters(userId,reply.getId());
                    if(ratingHistory != null && ratingHistory.size() > 0)
                        model.put("exists","true");
                    else
                        model.put("exists","false");

                    model.put("vote_up", reply.getVoteUp());
                    model.put("vote_down", reply.getVoteDown());
                    return model;
                }
            }

        }
        return model;

    }

    @RequestMapping(value = "/changeVoteForId",method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> setVotes(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("id") String id,
            @ModelAttribute("vote") String vote,
            @ModelAttribute("parentId") String parentId,
            @ModelAttribute("userId") String userId
    ) {

        Map<String, Object> model = new HashMap<String, Object>();

        if(id.trim().split("_")[0].equals("span12")) {
            Review review = service.findOneReview(id.trim().split("_")[1]);
            RatingHistory ratingHistory = new RatingHistory();
            ratingHistory.setUserId(userId);
            ratingHistory.setCreationDate(new Date());
            ratingHistory.setTargetId(id.trim().split("_")[1]);
            System.out.print("*********************************************" + review.getId());
            if(vote.equals("up")) {
                review.setVoteUp(String.valueOf(Integer.parseInt(review.getVoteUp()) + 1));
                ratingHistory.setTargetType("voteUp-Review");
            }else if(vote.equals("down")){
                review.setVoteDown(String.valueOf(Integer.parseInt(review.getVoteDown()) + 1));
                ratingHistory.setTargetType("voteDown-Review");
            }
            ratingHistory.setValue("1");
            model.put("vote_up", review.getVoteUp());
            model.put("vote_down",review.getVoteDown());


            service.createRatingHistory(ratingHistory);
            service.createReview(review);
        }else if(id.trim().split("_")[0].equals("span11")) {
            System.out.print("***************************parentid::" + parentId);
            Review review = service.findOneReview(parentId);
            List<Reply> replyList = review.getReplies();

            for (int i = 0; i < replyList.size(); i++) {
                Reply reply = replyList.get(i);
                System.out.print("*********************************************" + reply.getDisplayName());
                if (reply.getId().trim().equals(id.trim().split("_")[1])) {
                    RatingHistory ratingHistory = new RatingHistory();

                    ratingHistory.setUserId(userId);
                    ratingHistory.setCreationDate(new Date());
                    ratingHistory.setTargetId(id.trim().split("_")[1]);

                    if(vote.equals("up")) {
                        reply.setVoteUp(String.valueOf(Integer.parseInt(reply.getVoteUp()) + 1));
                        ratingHistory.setTargetType("voteUp-Reply");
                    }else if(vote.equals("down")){
                        reply.setVoteDown(String.valueOf(Integer.parseInt(reply.getVoteDown()) + 1));
                        ratingHistory.setTargetType("voteDown-Reply");
                    }
                    ratingHistory.setValue("1");
                    model.put("vote_up",reply.getVoteUp());
                    model.put("vote_down",reply.getVoteDown());
                    service.createRatingHistory(ratingHistory);
                }

            }
            service.createReview(review);
        }
        return model;

    }

    @RequestMapping(value = "/searchRatingForId",method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getRating(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("id") String id,
            @ModelAttribute("userId") String userId
    ) {
        Map<String, Object> model = new HashMap<String, Object>();
        List<RatingHistory> ratingHistory = service.findByParameters(userId,id);
        if(ratingHistory != null && ratingHistory.size() > 0){
            model.put("exists","true");
            model.put("value",ratingHistory.get(0).getValue());
        }
        else {
            model.put("exists","false");
        }

            Owner owner = service.findOne(id);
            Float finalRating = Float.parseFloat(owner.getTotalRating() == null ? "0" : owner.getTotalRating()) / Float.parseFloat(owner.getRatedUsers() == null ? "0" : owner.getRatedUsers() ) ;
            model.put("finalRating",finalRating);
            model.put("totalUsers",owner.getRatedUsers() == null ? "0" : owner.getRatedUsers());

        return model;

    }

    @Scope
    @RequestMapping(value = "/changeRatingForId",method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> setRating(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("id") String id,
            @ModelAttribute("score") String score ,
            @ModelAttribute("userId") String userId
    ) {

        Map<String, Object> model = new HashMap<String, Object>();
            RatingHistory ratingHistory  = new RatingHistory();
            ratingHistory.setUserId(userId);
            ratingHistory.setTargetType("rating");
            ratingHistory.setTargetId(id);
            ratingHistory.setValue(score);
            ratingHistory.setCreationDate(new Date());

            Owner owner = service.findOne(id);
            owner.setRatedUsers(Integer.toString(Integer.parseInt(owner.getRatedUsers() == null ? "0" : owner.getRatedUsers()) + 1));
            owner.setTotalRating(Float.toString(Float.parseFloat(owner.getTotalRating() == null ? "0" : owner.getTotalRating()) + Float.parseFloat(score)));
            service.create(owner);
            service.createRatingHistory(ratingHistory);

        model.put("ratingMessage","Your Rating of "+score+" Saved Successfully. Happy Blogging.");
        return model;
    }

    @RequestMapping(value = "/searchUserForId",method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getUser(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("id") String id
    ) {
        Map<String, Object> model = new HashMap<String, Object>();

        if(id.trim().split("_")[0].equals("span12")) {
            Review review = service.findOneReview(id.trim().split("_")[1]);
            Blogger blogger = service.findOneBlogger(review.getUserId());
            model.put("blogger", blogger);
        }else if(id.trim().split("_")[0].equals("span11")) {
            Review review = service.findReviewForReply(id.trim().split("_")[1]);
            List<Reply> replyList = review.getReplies();

            for (int i = 0; i < replyList.size(); i++) {
                Reply reply = replyList.get(i);
                if (reply.getId().trim().equals(id.trim().split("_")[1])) {
                    Blogger blogger = service.findOneBlogger(reply.getUserId());
                    model.put("blogger", blogger);
                    return model;
                }
            }

        }
        return model;

    }

    @RequestMapping(value = "/searchForPinCode",method=RequestMethod.POST)
    public @ResponseBody
    Map<String, Object> getPinCodeDetails(
            HttpServletRequest request,
            HttpServletResponse response,
            @ModelAttribute("pinCode") String pinCode
    ) {
        Map<String, Object> model = new HashMap<String, Object>();
        CityZip cityZip = service.findByPinCode(pinCode);
        model.put("cityZip", cityZip);
        return model;

    }

}
