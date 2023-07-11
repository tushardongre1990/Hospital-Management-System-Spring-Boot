package com.codingdojo.mvc.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.mvc.model.Doctor;
import com.codingdojo.mvc.model.User;



@Repository
public interface UserRepository extends CrudRepository<User,Long>{
	Optional<User> findByEmail(String email);
	
	List<User> findAll();
	
}
