package com.pineapple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.pineapple.mapper.CartMapper;
import com.pineapple.vo.Cart;
import com.pineapple.vo.OrderList;
import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;


public class CartRepImpl implements CartRep {
	
	private SqlSessionTemplate sessionTemplate;
	
	public SqlSessionTemplate getSessionTemplate() {
		return sessionTemplate;
	}

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}
	
	private CartMapper cartMapper;
		
	public CartMapper getCartMapper() {
		return cartMapper;
	}

	public void setCartMapper(CartMapper cartMapper) {
		this.cartMapper = cartMapper;
	}

	@Override
	public List<Cart> selectCartsByMemberId(String memberId) {
		
				
			return cartMapper.selectCartsByMemberId(memberId);
	}

	@Override
	public void insert(Cart cart) {
		cartMapper.insertCart(cart);
		
	}

	@Override
	public int countCart(int productNo, String memberId) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productNo", productNo);
		map.put("memberId", memberId);
		return cartMapper.selectMap(map);
	}

	@Override
	public void updateCart(Cart cart) {
		cartMapper.sumCart(cart);
		
	}

	@Override
	public int sumMoney(String memberId) {
		cartMapper.sumMoney(memberId);
		return cartMapper.sumMoney(memberId);
	}

	@Override
	public void delete(int orderId) {
		cartMapper.deleteCart(orderId);
		
	}

	@Override
	public void modifyCart(Cart cart) {
		cartMapper.modifyCart(cart);
	}

	@Override
	public void insertorder(Payment payment) {
		cartMapper.insertpayment(payment);
		
	}

	@Override
	public void insertorderdetail(PaymentDetail paymentDetail) {
		cartMapper.insertpaymentdetail(paymentDetail);
		
	}
	
	@Override
	public void alldelete(String memberId) {
		cartMapper.alldeleteCart(memberId);
		
	}
	
	@Override
	public List<Payment> orderList(Payment payment) {		
			return cartMapper.orderList(payment);
	}
	
	@Override
	public List<OrderList> orderView(Payment payment) {		
			return cartMapper.orderView(payment);
	}
	
}




















