package com.springboot.react.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Data;


@Data
@Entity
@Table(name = "MEMBER_TABLE")
public class MemberVO {

	@Id
	@Column(name = "MEMBERNUM")
	private int memberIdx;
	@Column(name = "MEMBERID")
	private String memberId;
	@Column(name = "MEMBERPASSWORD")
	private String memberPw;
	@Column(name = "MEMBERNAME")
	private String memberName;
	
}
