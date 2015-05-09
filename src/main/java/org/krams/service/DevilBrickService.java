package org.krams.service;

import org.krams.domain.Blogger;
import org.krams.domain.Owner;
import org.krams.domain.Reply;
import org.krams.domain.Review;
import org.krams.repository.BloggerRepository;
import org.krams.repository.OwnerRepository;
import org.krams.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
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

    public Owner create(Owner owner) {
        if(owner.getId()!=null && owner.getId().equals(""))
        owner.setId(UUID.randomUUID().toString());
        return repository.save(owner);
    }

    public Blogger createBlogger(Blogger blogger) {
        blogger.setId(UUID.randomUUID().toString());
        return bloggerRepository.save(blogger);
    }

    public List<Blogger> checkBlogger(Blogger blogger) {
        return bloggerRepository.findByParameters(blogger.getUserName(), blogger.getPassword());
    }

    public Review createReview(Review review) {
        review.setId(UUID.randomUUID().toString());
        return reviewRepository.save(review);
    }

    public Review updateReview(Reply reply,String id) {
        Review review = reviewRepository.findOne(id);
        System.out.print("////////1:" + review.getId());
        List<Reply> replies =  review.getReplies();
        if(replies==null) {
            replies = new ArrayList<Reply>();
        }
        System.out.print("////////2:" + replies.size());
        replies.add(reply);
        review.setReplies(replies);
        return reviewRepository.save(review);
    }

    public Owner findOne(String id) {
        return repository.findOne(id);
    }

    public List<Owner> findByParameters(Owner owner){
//        return  repository.findByFirstNameAndLastNameAndMobileAndEmailAndId(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId()) ;
//        return  repository.findByFirstNameOrLastNameOrMobileOrEmailOrId(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId()) ;
        return repository.findByParameters(owner.getFirstName(),owner.getLastName(),owner.getMobile(),owner.getEmail(),owner.getId(),owner.getPlotNumber(),owner.getAppartmentName(),owner.getDoorNo(),owner.getFloor(),owner.getStreetName(),owner.getLandmark(),owner.getArea(),owner.getCity(),owner.getTaluk(),owner.getDistrict(),owner.getState(),owner.getPinCode());
    }

}
