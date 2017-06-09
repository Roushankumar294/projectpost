package com.niit.dao;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.Category;
@Repository
public class CategoryDao {
	@Autowired
	SessionFactory sessionFactory;
	public CategoryDao(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	public void saveCategory(Category c)
	{
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();	
	}
	@SuppressWarnings("unchecked")
	public List<Category> view()
	{
		Session sess=sessionFactory.openSession();
		String query ="from Category";
		Query q=sess.createQuery(query);
		List<Category> l=q.list();
		return l;
	}
public Category getCategoryData(String id)
{
	Session sess=sessionFactory.openSession();
	Category cg=(Category)sess.get(Category.class,id);
	return cg;
}
public void updateCategoryData(Category r)
{
	Session sess=sessionFactory.openSession();
	Transaction tx=sess.beginTransaction();
	sess.update(r);
	tx.commit();
	sess.close();
}
public void deleteCategoryData(String id)
{
	String query="delete from Category where id=:id";
	Session sess=sessionFactory.openSession();
	Query q=sess.createQuery(query);
	q.setParameter("id",id);
	q.executeUpdate();
	sess.close();
}
}