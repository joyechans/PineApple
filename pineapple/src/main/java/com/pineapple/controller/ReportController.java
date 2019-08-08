package com.pineapple.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pineapple.service.ReportService;
import com.pineapple.vo.Notice;
import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;
import com.pineapple.vo.Product;

@Controller
@RequestMapping(path = "/report/")
public class ReportController {
	
	 @Autowired
	 @Qualifier("reportService")
	 private ReportService reportService;
	
	@RequestMapping(path = "/reporting", method = RequestMethod.GET)
	public String Reporting(Model model) {
		
		
		return "/report/reporting";
		
	}
	
	//제품별 판매량
	@RequestMapping(path = "/product-reporting", method = RequestMethod.GET)
	public String productReportingForm(Model model, Product product) {
		
		
		List<PaymentDetail> report = reportService.productReport(product);
		
	    model.addAttribute("report", report);
	    
		return "/report/product-reporting";
		
	}
	
	//월별 판매량
	@RequestMapping(path = "/monthly-reporting", method = RequestMethod.GET)
	public String monthlyReportingForm(Model model) {
		
		List<Payment> report = reportService.monthlyReport();
		
	    model.addAttribute("report", report);
			
		return "/report/monthly-reporting";
		
	}
	
	//사용자별 판매량
	@RequestMapping(path = "/member-reporting", method = RequestMethod.GET)
	public String memberReportingForm(Model model) {
		
		List<Payment> report = reportService.memberReport();
		
	    model.addAttribute("report", report);
			
		return "/report/member-reporting";
		
	}
	
}



















