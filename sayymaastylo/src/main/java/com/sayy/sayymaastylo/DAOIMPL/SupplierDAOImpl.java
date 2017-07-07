package com.sayy.sayymaastylo.DAOIMPL;



import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.google.gson.Gson;
import com.sayy.sayymaastylo.DAO.SupplierDAO;
import com.sayy.sayymaastylo.model.Supplier;


	@Repository
	@EnableTransactionManagement
	public class SupplierDAOImpl implements SupplierDAO 
	{

		@Autowired
		SessionFactory sessionFactory;	
		
		@Transactional
		@Override
		public List<Supplier> ListSupplier() {
			// TODO Auto-generated method stub
			List<Supplier> list = sessionFactory.getCurrentSession().createQuery("from Supplier sup").list();
			return list;
		}
		

		@Override
		public String insertSupplier(Supplier sm) {

			String status;
			
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			s.save(sm);
			t.commit();
			s.close();
			return null;
		}

		@Override
		public String updateSupplier(Supplier sm) {

			String status;
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			s.update(sm);
			t.commit();
			s.close();
			return null;
		}

		@Override
		public String deleteSupplier(String id) {
			String status;
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			Supplier sm =  (Supplier)s.get(Supplier.class, id);
			s.delete(sm);
			t.commit();
			s.close();
			return null;
		}

		@Override
		public String viewSupplier() {
			
			String status;
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			List<Supplier> supplierlist = s.createQuery("from Supplier").list();
			Gson g = new Gson();
			String supplierlistgson = g.toJson(supplierlist);
			t.commit();
			s.close();
			return supplierlistgson;
		}

		@Override
		public Supplier viewOneSupplier(String supplierid) {
			String status;
			Session s = sessionFactory.openSession();
			Transaction t = s.getTransaction();
			t.begin();
			Supplier sm =  (Supplier)s.get(Supplier.class, supplierid);
			t.commit();
			s.close();
			return sm;
		}
	}
	
	
	

