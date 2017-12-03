package com.sony.dao;

import java.util.List;


import com.sony.model.Supplier;

public interface SupplierDao {

	List<Supplier> list();
	void SaveSupplier(Supplier s);
	public Supplier  findById(int id);
	void delete(Supplier p);
	void updatesupplier(Supplier s);
	
}
