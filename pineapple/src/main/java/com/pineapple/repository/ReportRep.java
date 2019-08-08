package com.pineapple.repository;

import java.util.List;

import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;
import com.pineapple.vo.Product;

public interface ReportRep {

	List<PaymentDetail> productReport(Product product);

	List<Payment> monthlyReport();

	List<Payment> memberReport();

}
