package com.astuce.education.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.astuce.education.model.User;

public interface UserRepository extends JpaRepository<User, Long>{
	
	User findByUsername(String username);
}
