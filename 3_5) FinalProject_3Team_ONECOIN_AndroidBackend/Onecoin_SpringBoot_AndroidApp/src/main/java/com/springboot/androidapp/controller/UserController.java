package com.springboot.androidapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.androidapp.model.User;
import com.springboot.androidapp.service.UserService;

@Controller
@RestController
public class UserController {

	@Autowired
	private UserService service;
	
	@RequestMapping(value = "/signin")
	public boolean signIn(@RequestBody User vo, HttpServletRequest request) {
		
		User user;
		
		try {
			user = service.select(vo);
			
		} catch (NullPointerException e) {
			user = null;
		}
		if (user != null) {
			if(user.getUserPassword().equals(vo.getUserPassword())) {
				return true;
			}
		}
		return false;
	}
	
	@RequestMapping(value = "/signup")
	public boolean signUp(@RequestBody User vo) {
		System.out.println(vo);
		
		try {
			service.insert(vo);
			System.out.println(true);
			return true;
			
		} catch (Exception e) {
			System.out.println(false);
			return false;
		}		
	}
}

