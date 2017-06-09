package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
@Repository
public class CartDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public void saveCartData(Cart c)
	{
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();
	}
@SuppressWarnings("unchecked")
public List<Cart> cartList()
{
	String query="from Cart";
	Session sess=sessionFactory.openSession();
	Query q=sess.createQuery(query);
	List<Cart> l=q.list();
	sess.close();
	return l;
}
public void deleteCart(int c_id)
{
	String query="delete from Cart where c_id=:c_id";
	Session sess=sessionFactory.openSession();
	Query q=sess.createQuery(query);
	q.setParameter("c_id",c_id);
	q.executeUpdate();
	sess.close();
}
}