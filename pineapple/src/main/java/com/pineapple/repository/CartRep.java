package com.pineapple.repository;
import java.util.ArrayList;
import java.util.List;

import com.pineapple.vo.Cart;



public interface CartRep {

	

	List<Cart> selectCartsByMemberId(String memberId);

	public void insert(Cart cart);

	int countCart(int productNo, String memberId);

	void updateCart(Cart cart);

	int sumMoney(String memberId);

	void delete(int orderId);

	void modifyCart(Cart cart);
		
}