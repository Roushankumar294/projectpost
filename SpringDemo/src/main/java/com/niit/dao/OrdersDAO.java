package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Orders;
import com.niit.model.Payment;
import com.niit.model.ShippingAddress;

@Repository
public class OrdersDAO {

	
	@Autowired
	SessionFactory sessionFactory;
	
	public void saveOrders(Orders o)
	{
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		ShippingAddress s=o.getShippingAddress();
		sess.save(s);
		Payment p=o.getPayment();
		sess.save(p);
		sess.save(o);
		tx.commit();
		sess.close();
	}
}