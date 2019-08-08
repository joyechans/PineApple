package com.pineapple.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.pineapple.mapper.ReportMapper;
import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;
import com.pineapple.vo.Product;

public class ReportRepImpl implements ReportRep{
	
	private ReportMapper reportMapper;

	public ReportMapper getReportMapper() {
		return reportMapper;
	}

	public void setReportMapper(ReportMapper reportMapper) {
		this.reportMapper = reportMapper;
	}

	public SqlSessionTemplate getSessionTemplate() {
		return sessionTemplate;
	}

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}

	private SqlSessionTemplate sessionTemplate;

	@Override
	public List<PaymentDetail> productReport(Product product) {
		
		List<PaymentDetail> PaymentDetail = reportMapper.productReport(product);
	      
        return PaymentDetail;
	}

	@Override
	public List<Payment> monthlyReport() {
		
		List<Payment> Payment = reportMapper.monthlyReport();
	      
        return Payment;
	}

	@Override
	public List<Payment> memberReport() {
		
		List<Payment> Payment = reportMapper.memberReport();
	      
        return Payment;
	}

}
