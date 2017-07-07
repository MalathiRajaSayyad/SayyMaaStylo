package com.sayy.sayymaastylo.DAO;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sayy.sayymaastylo.model.Category;
import com.sayy.sayymaastylo.model.Supplier;

@Service
	public interface CategoryDAO {
	    
		
	public String insertCategory(Category cm);
	public String updateCategory(Category cm);
	public String deleteCategory(String id);
	public String viewCategory();
	public Category viewOneCategory(String id);

	public List<Category> ListCategory();
	


		

	}

