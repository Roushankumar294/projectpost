package com.niit.model;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.dao.CartDao;
import com.niit.dao.OrdersDAO;

@Component("orderWebFlow")
	public class OrderWebFlow implements Serializable {
		
		@Autowired
		OrdersDAO ordersDAO;
		
		@Autowired
		CartDao cartDAOImpl;
		
		String usr;

			public Orders initFlow()
			{
				 return new Orders();
				 
			}
			 
			public String addShippingAddress(Orders orders, ShippingAddress shippingAddress)
			{
				orders.setShippingAddress(shippingAddress);
				return "success";
			}
			 
			public String addPaymentMode(Orders orders, Payment paymentMode)
			{
				orders.setPayment(paymentMode);
				return "success";
			}
			 
			public String addOrders(Orders orders)
			{
				ordersDAO.saveOrders(orders);
				return "success";
			}
				 
	}