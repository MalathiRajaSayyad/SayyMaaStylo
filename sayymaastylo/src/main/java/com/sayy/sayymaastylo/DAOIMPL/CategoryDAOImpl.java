package com.sayy.sayymaastylo.DAOIMPL;

import java.util.Iterator;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.google.gson.Gson;
import com.sayy.sayymaastylo.DAO.CategoryDAO;
import com.sayy.sayymaastylo.model.Category;
import com.sayy.sayymaastylo.model.Supplier;

@Repository
@EnableTransactionManagement
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionFactory;
	

	@Override
	public String insertCategory(Category cm) {

		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.save(cm);
		t.commit();
		s.close();

		return null;
	}

	@Override
	public String updateCategory(Category cm) {

		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.update(cm);
		t.commit();
		s.close();
		return null;
	}

	@Override
	public String deleteCategory(String Id) {

		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		Category cm = (Category) s.get(Category.class, Id);
		s.delete(cm);
		t.commit();
		s.close();

		return null;
	}

	@Override
	public String viewCategory() {

		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		List<Category> categorieslist = s.createQuery("from Category").list();
		Gson g = new Gson();
		String categorylistgson = g.toJson(categorieslist);
		t.commit();
		s.close();

		return categorylistgson;
	}

	@Override
	public Category viewOneCategory(String id) {
		Session s = sessionFactory.openSession();		
		Transaction t = s.getTransaction();
		t.begin();
		Category cm = (Category) s.get(Category.class, id);
		t.commit();
		s.close();
		Gson g = new Gson();
		String categorygson = g.toJson(cm);
		return  cm;
	}

	@Override
	@Transactional
	public List<Category> ListCategory() {
	
		List<Category> list = sessionFactory.getCurrentSession().createQuery("from Category cat").list();
		return list;
	}

}

