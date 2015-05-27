package org.krams.repository;

import org.krams.domain.Owner;
import org.krams.domain.RatingHistory;
import org.krams.domain.Reply;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;

public interface RatingHistoryRepository extends MongoRepository<RatingHistory, String> {

    @Query("{ $and: [{userId: ?0 },{ targetId: ?1 }] }")
    List<RatingHistory> findByParameters(String userId, String targetId);

    List<RatingHistory> findByUserIdAndTargetId(String userId, String targetId);


}
