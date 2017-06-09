package com.niit.dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.Supplier;
@Repository//to autowire  dao class
public class SupplierDao {
	@Autowired//to automatically create object upto which it is placed
	SessionFactory sessionFactory;//to create object of session
	public SupplierDao(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;//it is not mandatory but we create this for initiakization purpose
	}
	public void saveSupplier(Supplier s)
	{
		Session sess=sessionFactory.openSession();//it create new session object
		Transaction tx=sess.beginTransaction();//set of statements, either all will run or none of them will run
		sess.save(s);//session includes fuction like save etc to  save data in database/insert query will run
		tx.commit();//save all queries and transaction under transaction
		sess.close();	
	}
	@SuppressWarnings("unchecked")
	public List<Supplier> view()
	{
		Session sess=sessionFactory.openSession();
		String query ="from Supplier";
		Query q=sess.createQuery(query);
		List<Supplier> l=q.list();
		return l;
	}
	public void deleteSupplier(String id)
	{	
		Session sess=sessionFactory.openSession();
		String query="delete from Supplier where id=:id";
		Query q=sess.createQuery(query);
		q.setParameter("id",id);
		q.executeUpdate();
		sess.close();
	}
	public Supplier getSupplierData(String id)//here we use retun type of supplier because the id,name,brand etc that we are getting from html page all are of type supplier data
	{
	Session sess=sessionFactory.openSession();
	Supplier su=(Supplier)sess.get(Supplier.class,id);//get() is used as select * from(Supplier where id=sid);
	return su;
	}
	public void updateSupplierData(Supplier s)
	{
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.update(s);
		tx.commit();
		sess.close();	
	}
}