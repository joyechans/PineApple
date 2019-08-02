package com.pineapple.vo;


import lombok.Data;

@Data
public class Member {
	
	private String memberId;
	private String name;
	private String passwd;
	private String phoneNumber;
	private String userType;		
}
