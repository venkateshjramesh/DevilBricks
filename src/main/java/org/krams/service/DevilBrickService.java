package org.krams.service;

import org.krams.domain.Owner;
import org.krams.domain.Review;
import org.krams.repository.OwnerRepository;
import org.krams.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class DevilBrickService {

	@Autowired
	private OwnerRepository repository;

    @Autowired
    private ReviewRepository reviewRepository;

    public Owner create(Owner owner) {
        owner.setId(UUID.randomUUID().toString());
        return repository.save(owner);
    }

    public Review createReview(Review review) {
        review.setId(UUID.randomUUID().toString());
        return reviewRepository.save(review);
    }
	

}
