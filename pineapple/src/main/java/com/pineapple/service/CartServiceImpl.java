package com.pineapple.service;

import java.util.List;

import com.pineapple.common.Util;
import com.pineapple.repository.CartRep;

import com.pineapple.vo.Cart;
import com.pineapple.vo.OrderList;
import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;


public class CartServiceImpl implements CartService {
	
	private CartRep cartRep;
	
	public CartRep getCartRep() {
		return cartRep;
	}

	public void setCartRep(CartRep cartRep) {
		this.cartRep = cartRep;
	}

	@Override
	public List<Cart> findCartListBymemberId(String memberId) {
		
		return cartRep.selectCartsByMemberId(memberId); 
	}

	@Override
	public void insert(Cart cart) {
		cartRep.insert(cart);
		
	}

	@Override
	public int countCart(int productNo, String memberId) {
		
		return cartRep.countCart(productNo, memberId);
	}

	@Override
	public void updateCart(Cart cart) {
		cartRep.updateCart(cart);
		
	}

	@Override
	public int sumMoney(String memberId) {
		return cartRep.sumMoney(memberId);
	}

	@Override
	public void delete(int orderId) {
		cartRep.delete(orderId);
		
	}

	@Override
	public void modifyCart(Cart cart) {
		cartRep.modifyCart(cart);
		
	}

	@Override
	public void insertorder(Payment payment) {
		
		cartRep.insertorder(payment);
	}

	@Override
	public void insertorderdetail(PaymentDetail paymentDetail) {
		cartRep.insertorderdetail(paymentDetail);
	}

	@Override
	public void alldelete(String memberId) {
		cartRep.alldelete(memberId);
		
	}
	
	@Override
	public List<Payment> orderList(Payment payment) {
		
		return cartRep.orderList(payment); 
	}
	
	@Override
	public List<OrderList> orderView(Payment payment) {
		
		return cartRep.orderView(payment); 
	}

	

	
	

}
