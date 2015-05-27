package org.krams.repository;

import org.krams.domain.Owner;
import org.krams.domain.Review;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

public interface ReviewRepository extends MongoRepository<Review, String> {

    @Query("{'replies._id': ?0 }")
    Review findReviewForReply(String id);
}
