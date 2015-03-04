package org.krams.repository;

import org.krams.domain.Owner;
import org.krams.domain.Role;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;

public interface OwnerRepository extends MongoRepository<Owner, String> {

//    List<Owner> findByFirstNameAndLastNameAndMobileAndEmailAndId(String firstName, String LastName, String mobile,String email,String id);

    @Query("{ $or: [ { _id: ?4 }, { firstName: ?0 },{ lastName: ?1 },{ email: ?3 },{ mobile: ?2 } ] }")
    List<Owner> findByParameters(String firstName, String LastName, String mobile,String email,String id);
}
