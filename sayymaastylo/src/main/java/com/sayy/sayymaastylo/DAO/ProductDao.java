package com.sayy.sayymaastylo.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.sayy.sayymaastylo.model.Product;



@Repository
@Service
public interface ProductDao {

	@Autowired
	public String insertProduct (Product prod);
	public String updateProduct(int prod_id,Product prod);
	public String deleteProduct(int id);
	public String viewProduct();
	public String viewProductByCategory(String cat_id);
	public Product viewOneProduct(int prod_id);
		
		
		
}


