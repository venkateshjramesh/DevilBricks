package org.krams.repository;

import org.krams.domain.Owner;
import org.krams.domain.Review;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface ReviewRepository extends MongoRepository<Review, String> {

}
