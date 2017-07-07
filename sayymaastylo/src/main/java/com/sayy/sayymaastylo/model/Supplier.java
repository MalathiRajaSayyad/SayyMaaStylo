package com.sayy.sayymaastylo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.Transaction;

@Entity
public class Supplier
{
	@Id
	String SupplierId;
	
	@Column
	String SupplierName;
	
	@Column
	String SupplierPhone;
	
	@Column
	String SupplierAddress;

	public String getSupplierId() {
		return SupplierId;
	}

	public void setSupplierId(String supplierId) {
		SupplierId = supplierId;
	}

	public String getSupplierName() {
		return SupplierName;
	}

	public void setSupplierName(String supplierName) {
		SupplierName = supplierName;
	}

	public String getSupplierPhone() {
		return SupplierPhone;
	}

	public void setSupplierPhone(String supplierPhone) {
		SupplierPhone = supplierPhone;
	}

	public String getSupplierAddress() {
		return SupplierAddress;
	}

	public void setSupplierAddress(String supplierAddress) {
		SupplierAddress = supplierAddress;
	}}
