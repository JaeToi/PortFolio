package com.springboot.androidapp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springboot.androidapp.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, String>{
	
	//회원가입 등록 시 사용
	User save(User user);
	
	//로그인 시 회원정보 있나 확인
	User findByUserId(String id);

	
}

