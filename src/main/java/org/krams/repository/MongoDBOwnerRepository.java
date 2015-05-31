package org.krams.repository;

import org.krams.domain.Owner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import java.util.List;

import static org.springframework.data.mongodb.core.query.Criteria.where;
import static org.springframework.data.mongodb.core.query.Query.query;

@Repository
class MongoDBOwnerRepository implements IMongoDBOwnerRepository {

    private final MongoOperations operations;

    @Autowired
    public MongoDBOwnerRepository(MongoOperations operations) {

        Assert.notNull(operations);
        this.operations = operations;
    }



    public List<Owner> findByPinCode(String pinCode) {

        Query query = query(where("pinCode").is(pinCode.split("!")[16])
        .andOperator(where("firstName").is(pinCode.split("!")[0])
                .orOperator(
                        where("lastName").is(pinCode.split("!")[1]),
                        where("email").is(pinCode.split("!")[3]),
                        where("mobile").is(pinCode.split("!")[2].trim().equals("") ? null : pinCode.split("!")[2]),
                        where("_id").is(pinCode.split("!")[4]),
                        where("landmark").is(pinCode.split("!")[10].trim().equals("") ? null : pinCode.split("!")[10]),
                        where("area").is(pinCode.split("!")[11].trim().equals("") ? null : pinCode.split("!")[11]),
                        where("city").is(pinCode.split("!")[12].trim().equals("") ? null : pinCode.split("!")[12]),
                        where("taluk").is(pinCode.split("!")[13].trim().equals("") ? null : pinCode.split("!")[13]),
                        where("state").is(pinCode.split("!")[15].trim().equals("") ? null : pinCode.split("!")[15]),
                        where("district").is(pinCode.split("!")[14].trim().equals("") ? null : pinCode.split("!")[14]),
                        where("plotNumber").is(pinCode.split("!")[5].trim().equals("") ? null : pinCode.split("!")[5]),
                        where("appartmentName").is(pinCode.split("!")[6].trim().equals("") ? null : pinCode.split("!")[6]),
                        where("doorNo").is(pinCode.split("!")[7].trim().equals("") ? null : pinCode.split("!")[7]),
                        where("floor").is(pinCode.split("!")[8].trim().equals("") ? null : pinCode.split("!")[8]),
                        where("streetName").is(pinCode.split("!")[9].trim().equals("") ? null : pinCode.split("!")[9])
                )
        )
        );

        query.fields().exclude("review");
        return operations.find(query, Owner.class);
    }

    public Owner findOne(String id) {

        Query query = query(where("id").is(id));
        return operations.findOne(query, Owner.class);
    }


}