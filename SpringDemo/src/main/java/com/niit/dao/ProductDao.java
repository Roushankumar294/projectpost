package com.niit.dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
@Repository
public class ProductDao {
	@Autowired
	SessionFactory sessionFactory;
	public void saveProduct(Product p)
	{
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(p);
		tx.commit();
		sess.close();
	}	
	@SuppressWarnings("unchecked")
	public List<Product> view()
	{
		String query="from Product";
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Query q=sess.createQuery(query);
		List<Product> l=q.list();
		tx.commit();
		sess.close();
		return l;
	}
	public Product getUpdateData(String p_id)//ask?
	{
		
		Session sess=sessionFactory.openSession();
		Product pd=(Product)sess.get(Product.class,p_id);
		return pd;
	}
	public void saveUpdateData(Product p)
	{
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.update(p);
		tx.commit();
		sess.close();
	}
	public void deleteProduct(String p_id)
	{
		String query="delete from Product where p_id=:p_id";
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery(query);
		q.setParameter("p_id",p_id);
		q.executeUpdate();
		sess.close();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> eachdetails(String p_id)
	{
		String query="from Product where p_id=:p_id";
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery(query);
		q.setParameter("p_id",p_id);
		List<Product> l=q.list();
		sess.close();
		return l;
	}
	@SuppressWarnings("unchecked")
	public  List<Supplier> getSupplierName()//to get supplier name as dropdown name in jason form
	{
		String query="select name from Supplier";
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery(query);
		List<Supplier> l=q.list();
		sess.close();
		return l;
	}
	@SuppressWarnings("unchecked")//to get category name as dropdown in jason form
	public List<Category> getCategoryName()
	{
		String query="select name from Category";
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery(query);
		List<Category> l=q.list();
		sess.close();
		return l;
	}
	@SuppressWarnings("unchecked")
	public List<Product> kidsData()
	{
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery("from Product where category_name='kids'");
		List<Product> l=q.list();
		sess.close();
		return l;
	}
	@SuppressWarnings("unchecked")
	public List<Product> mensData()
	{
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery("from Product where category_name='mens'");
		List<Product> l=q.list();
		sess.close();
		return l;
	}
	@SuppressWarnings("unchecked")
	public List<Product> womensData()
	{
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery("from Product where category_name='womens'");
		List<Product> l=q.list();
		sess.close();
		return l;
	}
	@SuppressWarnings("unchecked")
	public List<Product> cart(String p_id)
	{
		String query="from Product where p_id=:p_id";
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery(query);
		q.setParameter("p_id",p_id);
		List<Product> l=q.list();
		sess.close();
		return l;
	}
}