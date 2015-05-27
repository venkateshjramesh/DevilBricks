package org.krams.repository;

import org.krams.domain.Owner;
import org.krams.domain.Role;
import org.krams.domain.User;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;

import java.util.List;

public interface OwnerRepository extends MongoRepository<Owner, String> {

//    List<Owner> findByFirstNameAndLastNameAndMobileAndEmailAndId(String firstName, String LastName, String mobile,String email,String id);

    //@Query("{ $and: [ { pinCode: ?16}, { $or: [ { _id: ?4 }, { firstName: ?0 },{ lastName: ?1 },{ email: ?3 },{ mobile: ?2 },{ plotNumber: ?5 },{ appartmentName: ?6 },{ doorNo: ?7 },{ floor: ?8 },{ streetName: ?9 },{ landmark:?10},{ area: ?11 },{ city: ?12 },{ taluk: ?13 },{ district: ?14 },{ state: ?15 } ] } ] }")
   // @Query("{ $or: [{ pinCode: ?16}, { _id: ?4 }, { landmark:?10},{ area: ?11 },{ city: ?12 },{ taluk: ?13 },{ district: ?14 },{ state: ?15 },{ firstName: ?0 },{ lastName: ?1 },{ email: ?3 },{ mobile: ?2 },{ plotNumber: ?5 },{ appartmentName: ?6 },{ doorNo: ?7 },{ floor: ?8 },{ streetName: ?9 },{ landmark:?10},{ area: ?11 },{ city: ?12 },{ taluk: ?13 },{ district: ?14 },{ state: ?15 } ] }")
    //List<Owner> findByParameters(String firstName, String LastName, String mobile,String email,String id,String plotNumber,String appartmentName, String doorNo, String floor, String streetName, String landmark, String area, String city, String taluk, String district, String state,String pinCode);





    List<Owner> findByPinCodeAndFirstName(String pinCode, String firstName);


}