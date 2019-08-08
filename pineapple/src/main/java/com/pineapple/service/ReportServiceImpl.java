package com.pineapple.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pineapple.repository.ReportRep;
import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;
import com.pineapple.vo.Product;

@Service
public class ReportServiceImpl implements ReportService{
	
	private ReportRep reportRep;

	public ReportRep getReportRep() {
		return reportRep;
	}

	public void setReportRep(ReportRep reportRep) {
		this.reportRep = reportRep;
	}

	@Override
	public List<PaymentDetail> productReport(Product product) {
		
		List<PaymentDetail> PaymentDetail = reportRep.productReport(product);
		
		return PaymentDetail;
	}

	@Override
	public List<Payment> monthlyReport() {
		
		List<Payment> Payment = reportRep.monthlyReport();
		
		return Payment;
	}

	@Override
	public List<Payment> memberReport() {
		
		List<Payment> Payment = reportRep.memberReport();
		
		return Payment;
	}

}
