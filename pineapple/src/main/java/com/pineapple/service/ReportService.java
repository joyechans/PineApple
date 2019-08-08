package com.pineapple.service;

import java.util.List;

import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;
import com.pineapple.vo.Product;

//import com.catwebsite.vo.Upload;

public interface ReportService {

	List<PaymentDetail> productReport(Product product);

	List<Payment> monthlyReport();

	List<Payment> memberReport();
	



}
