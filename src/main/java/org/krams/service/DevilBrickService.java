package org.krams.service;

import org.krams.domain.*;
import org.krams.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class DevilBrickService {

	@Autowired
	private OwnerRepository repository;

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private BloggerRepository bloggerRepository;

    @Autowired
    private ReplyRepository replyRepository;

    @Autowired
    private ReportRepository reportRepository;

    @Autowired
    private RatingHistoryRepository ratingHistoryRepository;

    public Owner create(Owner owner) {
        if(owner.getId()!=null && owner.getId().equals(""))
        owner.setId(UUID.randomUUID().toString());
        return repository.save(owner);
    }

    public Report createReport(Report report) {
        report.setId(UUID.randomUUID().toString());
        return reportRepository.save(report);
    }

    public RatingHistory createRatingHistory(RatingHistory ratingHistory) {
        ratingHistory.setId(UUID.randomUUID().toString());
        return ratingHistoryRepository.save(ratingHistory);
    }

    public Blogger createBlogger(Blogger blogger) {
        blogger.setId(UUID.randomUUID().toString());
        return bloggerRepository.save(blogger);
    }

    public List<Blogger> checkBlogger(Blogger blogger) {
        return bloggerRepository.findByParameters(blogger.getUserName(), blogger.getPassword());
    }

    public Blogger findOneBlogger(String id) {
        return bloggerRepository.findOne(id);
    }

    public Review createReview(Review review) {
        if(review.getId()!=null && review.getId().equals(""))
        review.setId(UUID.randomUUID().toString());
        else if(review.getId()==null)
            review.setId(UUID.randomUUID().toString());
        return reviewRepository.save(review);
    }

    public Review updateReview(Reply reply,String id) {
        Review review = reviewRepository.findOne(id);
        List<Reply> replies =  review.getReplies();
        if(replies==null) {
            replies = new ArrayList<Reply>();
        }
        replies.add(reply);
        review.setReplies(replies);
        return reviewRepository.save(review);
    }


    public Owner findOne(String id) {
        return repository.findOne(id);
    }

    public Review findOneReview(String id) {
        return reviewRepository.findOne(id);
    }
    public Review findReviewForReply(String id) {
        return reviewRepository.findReviewForReply(id);
    }

    public List<Owner> findByParameters(Owner owner){
//        return  repository.findByFirstNameAndLastNameAndMobileAndEmailAndId(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId()) ;
//        return  repository.findByFirstNameOrLastNameOrMobileOrEmailOrId(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId()) ;
        //return repository.findByParameters(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId(),owner.getPlotNumber(),owner.getAppartmentName(),owner.getDoorNo(),owner.getFloor(),owner.getStreetName(),owner.getLandmark(),owner.getArea(),owner.getCity(),owner.getTaluk(),owner.getDistrict(),owner.getState(),owner.getPinCode());
        //return repository.findByParameters(owner.getFirstName(),owner.getPinCode());

        return repository.findByPinCodeAndFirstName(owner.getPinCode(),owner.getFirstName());





    }

    public List<RatingHistory> findByParameters(String userId,String targetId) {
        return ratingHistoryRepository.findByUserIdAndTargetId(userId,targetId);
    }

}
