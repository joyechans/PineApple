package com.pineapple.service;

import java.util.List;

import com.pineapple.vo.Cart;
import com.pineapple.vo.OrderList;
import com.pineapple.vo.Payment;
import com.pineapple.vo.PaymentDetail;

//import com.catwebsite.vo.Upload;

public interface CartService {
	
	

	List<Cart> findCartListBymemberId(String memberId);

	void insert(Cart cart);

	int countCart(int productNo, String memberId);

	void updateCart(Cart cart);

	int sumMoney(String memberId);

	void delete(int orderId);

	void modifyCart(Cart cart);

	void insertorder(Payment payment);
	
	void insertorderdetail(PaymentDetail paymentDetail);

	void alldelete(String memberId);

	List<Payment> orderList(Payment payment);

	List<OrderList> orderView(Payment payment);


}
