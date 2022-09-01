package com.stephen.loginandregistration.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.stephen.loginandregistration.models.User;

@Repository

public interface UserRepo extends CrudRepository<User, Long> {
	Optional<User> findByEmail(String email);
	
	Optional<User> findByUsername(String username);
	
}
