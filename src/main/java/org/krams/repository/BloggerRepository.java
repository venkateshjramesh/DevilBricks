package org.krams.repository;

import org.krams.domain.Blogger;
import org.krams.domain.Owner;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;

public interface BloggerRepository extends MongoRepository<Blogger, String> {
    @Query("{ userName: ?0 , password : ?1}")
    List<Blogger> findByParameters(String userName, String password);

    Blogger findByEmail(String email);
}
