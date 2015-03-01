package org.krams.service;

import org.krams.domain.Owner;
import org.krams.domain.User;
import org.krams.repository.DevilBrickRepository;
import org.krams.repository.RoleRepository;
import org.krams.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class DevilBrickService {

	@Autowired
	private DevilBrickRepository repository;

    public Owner create(Owner owner) {
        owner.setId(UUID.randomUUID().toString());
        return repository.save(owner);
    }
	

}
