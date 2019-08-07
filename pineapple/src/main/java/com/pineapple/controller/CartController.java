package com.pineapple.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pineapple.common.Util;
import com.pineapple.service.CartService;
import com.pineapple.vo.Cart;
import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;

@Controller
@RequestMapping(path = "/upload/")
public class CartController {
	
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	
	@RequestMapping(path = "/insertcart", method = RequestMethod.POST)
	public String insertcart(@ModelAttribute Cart cart) {
//		String memberId = (String) session.getAttribute("memberId");
//		cart.setMemberId(memberId);
		
		int count = cartService.countCart(cart.getProductNo(), cart.getMemberId());
		if(count ==0) {
		cartService.insert(cart);
		} else {
			cartService.updateCart(cart);
		}
		return "redirect:/upload/ordercart?memberId="+cart.getMemberId();
	}
	
	
	@RequestMapping(path = "/ordercart", method = RequestMethod.GET)
	public ModelAndView memberList(String memberId, ModelAndView mav) {
		
		Map<String, Object> map = new HashMap<String, Object>();		
		List<Cart> carts = cartService.findCartListBymemberId(memberId);
		int sumMoney = cartService.sumMoney(memberId);
		int fee = sumMoney >= 100000 ? 0: 2500; 
		map.put("carts", carts);
		map.put("count", carts.size());
		map.put("sumMoney", sumMoney);
		map.put("fee", fee);
		map.put("allSum", sumMoney+fee);
		mav.setViewName("upload/cart");
		mav.addObject("map", map);
		return mav; // "/WEB-INF/views/" + upload/write + ".jsp"
	}
	
	@RequestMapping(path = "/deletecart", method = RequestMethod.GET)
	public String deletecart(@RequestParam int orderId, String memberId) {
		cartService.delete(orderId);
		return "redirect:/upload/ordercart?memberId="+memberId;
	}
	
	@RequestMapping(path = "/updatecart", method = RequestMethod.GET)
	public String update(@RequestParam int amount, int orderId, String memberId) {

		Cart cart = new Cart();
		cart.setOrderId(orderId);
		cart.setAmount(amount);
		
		cartService.modifyCart(cart);


		return "redirect:/upload/ordercart?memberId="+memberId;
	}
	
	
	  @RequestMapping(path="/doorder", method = RequestMethod.POST) 
	  public String doorder(String memberId, Payment payment, PaymentDetail paymentDetail) { 
		  
		  
		  
		  Calendar cal = Calendar.getInstance();
		  int year = cal.get(Calendar.YEAR);
		  String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		  String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		  String subNum = "";
		  
		  for(int i = 1; i <= 6; i ++) {
		   subNum += (int)(Math.random() * 10);
		  }
		  
		  String paymentNo = ymd + "_" + subNum;
		  payment.setPaymentNo(paymentNo);
		  payment.setMemberId(memberId);
		  
		  
		  cartService.insertorder(payment);
		  	  
		  paymentDetail.setPaymentNo(paymentNo);
		  paymentDetail.setPaymentNo(memberId);
		  cartService.insertorderdetail(paymentDetail);
		  
		  cartService.alldelete(memberId);
		  
	  return "redirect:/upload/ordercart?memberId="+memberId; 
	  }
	 
}



















