package com.sayy.sayymaastylo.DAO;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sayy.sayymaastylo.model.Supplier;

@Service
public interface SupplierDAO {
		

	public String insertSupplier(Supplier sm);
	public String updateSupplier(Supplier sm);
	public String deleteSupplier(String id);
	public String viewSupplier();
	public Supplier viewOneSupplier(String id);
	public List<Supplier> ListSupplier();


	}

