package org.krams.service;

import org.krams.domain.*;
import org.krams.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class DevilBrickService {

    @Autowired
    private IMongoDBOwnerRepository mongoDBOwnerRepository;

    @Autowired
    private MongoTemplate mongoTemplate;

	@Autowired
	private OwnerRepository ownerRepository;

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

    @Autowired
    private CityZipRepository cityZipRepository;

    public Owner create(Owner owner) {
        if(owner.getId()!=null && owner.getId().equals(""))
        owner.setId(UUID.randomUUID().toString());
        return ownerRepository.save(owner);
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
        //add reply in a specific position
        for(int j=0;j<replies.size();j++){
            if(replies.get(j).getId().equals(reply.getParentId())){
                replies.add(j + 1,reply);
            review.setReplies(replies);
            return reviewRepository.save(review);
            }
        }

        replies.add(reply);
        review.setReplies(replies);
        return reviewRepository.save(review);

    }


    public Owner findOne(String id) {
        return ownerRepository.findOne(id);
    }

    public CityZip findByPinCode(String pinCode) {
        List<CityZip> cityList = cityZipRepository.findByPinCode(pinCode);
        if(cityList != null && cityList.size() > 0)
        return cityList.get(0);
        else
            return null;
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

        String pincode = owner.getFirstName()+"!"+owner.getLastName()+"!"+owner.getMobile()+"!"+owner.getEmail()+"!"+owner.getId()+"!"+owner.getPlotNumber()+"!"+owner.getAppartmentName()+"!"+owner.getDoorNo()+"!"+owner.getFloor()+"!"+owner.getStreetName()+"!"+owner.getLandmark()+"!"+owner.getArea()+"!"+owner.getCity()+"!"+owner.getTaluk()+"!"+owner.getDistrict()+"!"+owner.getState()+"!"+owner.getPinCode();

        return mongoDBOwnerRepository.findByPinCode(pincode);
        //mongoDBOwnerRepository.
        //return ownerRepository.findByPinCodeAndFirstName(owner.getPinCode(),owner.getFirstName());





    }

    public List<RatingHistory> findByParameters(String userId,String targetId) {
        return ratingHistoryRepository.findByUserIdAndTargetId(userId,targetId);
    }

}
