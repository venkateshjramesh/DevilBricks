package org.krams.repository;

import org.krams.domain.Blogger;
import org.krams.domain.Reply;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;

public interface ReplyRepository extends MongoRepository<Reply, String> {

}
