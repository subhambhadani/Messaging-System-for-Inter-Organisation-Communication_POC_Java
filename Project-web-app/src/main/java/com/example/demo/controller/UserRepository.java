package com.example.demo.controller;

import org.springframework.data.mongodb.repository.MongoRepository;


public interface UserRepository extends MongoRepository<User,Integer>{
	

}
