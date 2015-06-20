package org.krams.repository;

import org.krams.domain.Blogger;
import org.krams.domain.CityZip;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;

public interface CityZipRepository extends MongoRepository<CityZip, String> {
    //@Query("{ 'pinCode': ?0}")
    List<CityZip> findByPinCode(Integer pinCode);
}
