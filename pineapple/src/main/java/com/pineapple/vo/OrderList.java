package com.pineapple.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderList {
	
	private String paymentNo;
	private String memberId;
	private String addr1;
	private String addr2;
	private String addr3;
	private String name;
	private int price;
	private int money;
	private int amount;
	private Date paymentDate;
	
	
	private int paymentDetailNo;
	private int productNo;

		
}
