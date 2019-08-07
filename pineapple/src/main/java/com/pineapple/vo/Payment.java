package com.pineapple.vo;

import java.sql.Date;
import java.util.ArrayList;

import lombok.Data;

@Data
public class Payment {
	
	private String paymentNo;
	private String memberId;
	private Date paymentDate;
	private int money;
	private String addr1;
	private String addr2;
	private String addr3;
	
	
}
