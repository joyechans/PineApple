package com.pineapple.vo;

import java.sql.Date;
import java.util.ArrayList;

import lombok.Data;

@Data
public class PaymentDetail {
	
	private int paymentDetailNo;
	private String paymentNo;
	private int productNo;
	private int amount;
	private String memberId;
	
	
	
		
}
