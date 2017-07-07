package com.sayy.sayymaastylo.DAOIMPL;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.sayy.sayymaastylo.DAO.UserDAO;
import com.sayy.sayymaastylo.model.User;

@Repository
@EnableTransactionManagement
public class UserDAOIMPL implements UserDAO
{
	
	@Autowired
	SessionFactory sessionfactory;

	@Override
	public String insert_user(User u) {
		
		
		Session s = sessionfactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.save(u);
		t.commit();
		s.close();
		return null;
		
		
	}

}
