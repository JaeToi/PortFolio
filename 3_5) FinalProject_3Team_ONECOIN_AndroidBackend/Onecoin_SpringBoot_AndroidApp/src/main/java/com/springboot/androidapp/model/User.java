package com.springboot.androidapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "user_app")
@Getter
@Setter
@ToString
public class User {

	@Id
	@Column(name = "user_id")
	private String userId;
	
	@Column(name = "user_password")
	private String userPassword;
	
}


