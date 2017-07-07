package com.sayy.sayymaastylo.DAOIMPL;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;


import com.google.gson.Gson;
import com.sayy.sayymaastylo.DAO.ProductDao;
import com.sayy.sayymaastylo.model.Product;

@Repository
@EnableTransactionManagement
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public String insertProduct(Product prod) {
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.save(prod);
		t.commit();
		s.close();
		return null;

	}
	
	@Override
	public String viewProduct(){
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		//get product table as list and save it in list object.it is in Gson Format
		List<Product>prodList = s.createQuery("from Product").list();
		Gson g = new Gson();
		//convert to Json format and store it another variable 
		String prodListJson = g.toJson(prodList);
		t.commit();
		s.close();
		//return the variable having list in JsonFormat
		return prodListJson;		
	}
	@Override
	public String viewProductByCategory(String cat_id){
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		//get product table as list and save it in list object.it is in Gson Format
		List<Product>prodByCategory = s.createQuery("from Product").list();
		Gson g = new Gson();
		//convert to Json format and store it another variable 
		String prodListByCatJson = g.toJson(prodByCategory);
		t.commit();
		s.close();
		//return the variable having list in JsonFormat
		return prodListByCatJson;		
	
	}
	
	
	
	
	@Override
	public Product viewOneProduct(int prod_id) {
		Session s = sessionFactory.openSession();		
		Transaction t = s.getTransaction();
		t.begin();
		Product prod = (Product) s.get(Product.class, prod_id);
		t.commit();
		s.close();
		//Gson g = new Gson();
		//String oneProductJson = g.toJson(prod);
		return  prod;
	}

@Override
	public String updateProduct(int prod_id,Product prod) {
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.update(prod);
		t.commit();
		s.close();
		return null;
	}
	
@Override
public String deleteProduct(int pId) {
	Session s = sessionFactory.openSession();
	Transaction t = s.getTransaction();
	t.begin();
	Product prod =  (Product)s.get(Product.class, pId);
	s.delete(prod);
	t.commit();
	s.close();
	return null;
}



}
