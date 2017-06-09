package com.niit.dao;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.Register;
@Repository
public class RegisterDao {
	@Autowired
	SessionFactory sessionFactory;
	public RegisterDao(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}	

	public void saveUser(Register r)
	{
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(r);
		tx.commit();
		sess.close();
	}
	public void deleteUser(String emailid)
	{	
		Session sess=sessionFactory.openSession();
		String query="delete from Register where emailid=:emailid";
		Query q=sess.createQuery(query);
		q.setParameter("emailid",emailid);//why we set parameter here?
		q.executeUpdate();
		sess.close();
	}
	@SuppressWarnings("unchecked")
	public List<Register> viewCustomer()
	{
		String query="from Register";
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery(query);
		List<Register> l=q.list();
		return l;
	}
	@SuppressWarnings("unchecked")
	public boolean loginvalidate(String username,String password)
	{
		String query="from Register where username=:username and password=:password";
		Session sess=sessionFactory.openSession();
		Query q=sess.createQuery(query);
		q.setParameter("username",username);
		q.setParameter("password",password);
		List<Register> list=q.list();
		if(list.size()>0)
		{
			return true;
		}
		else
		{
			return false;
		}
		//update User set email=:email where username=:username
		
	}
}