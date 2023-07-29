package com.springboot.androidapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.androidapp.model.User;
import com.springboot.androidapp.repository.UserRepository;

@Service //서비스라고 알림?
public class UserServiceImpl implements UserService{

	@Autowired
	UserRepository repo;
	
	//회원가입
	@Override
	public void insert(User vo) {
		repo.save(vo);
	}

	//로그인
	@Override
	public User select(User vo) {
		User user = repo.findByUserId(vo.getUserId());
		return user;
	}

}
