package org.krams.repository;

import org.krams.domain.Owner;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface IMongoDBOwnerRepository extends Repository<Owner, String> {

    List<Owner> findByPinCode(String pinCode);

    Owner findOne(String id);


}