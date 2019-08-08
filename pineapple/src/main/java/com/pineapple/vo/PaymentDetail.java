package com.pineapple.vo;

import lombok.Data;

@Data
public class PaymentDetail {
	
	private int paymentDetailNo;
	private String paymentNo;
	private int productNo;
	private int amount;
	private String memberId;
	private String name;
	private String kind;
	private int price;
	private int total;
	private String addr1;
	private String addr2;
	private String addr3;
	private int money;
	
		
}
