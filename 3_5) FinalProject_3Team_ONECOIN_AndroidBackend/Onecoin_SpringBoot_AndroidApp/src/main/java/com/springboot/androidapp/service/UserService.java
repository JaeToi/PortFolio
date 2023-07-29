package com.springboot.androidapp.service;

import com.springboot.androidapp.model.User;

public interface UserService {

	//회원가입
	void insert(User vo);
	
	//로그인 시 회원정보 확인
	User select(User vo);
	
	
}
