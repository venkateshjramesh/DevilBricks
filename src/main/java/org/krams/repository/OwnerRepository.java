package org.krams.repository;

import org.krams.domain.Owner;
import org.krams.domain.Role;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface OwnerRepository extends MongoRepository<Owner, String> {

}
