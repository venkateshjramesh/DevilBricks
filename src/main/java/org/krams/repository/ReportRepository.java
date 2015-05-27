package org.krams.repository;

import org.krams.domain.Reply;
import org.krams.domain.Report;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface ReportRepository extends MongoRepository<Report, String> {

}
