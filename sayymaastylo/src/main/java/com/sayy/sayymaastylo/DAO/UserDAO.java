
package com.sayy.sayymaastylo.DAO;

import org.springframework.stereotype.Service;

import com.sayy.sayymaastylo.model.User;

@Service
public interface UserDAO {
		
	public String insert_user(User u);
}
