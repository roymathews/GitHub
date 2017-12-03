package com.sony.dao;



import java.util.List;

import com.sony.model.Product;


public interface ProductDao {
	List<Product> list();
	public Product  findById(int id);
	void saveProduct(Product p);
	void delete(Product p);
	void updateproduct(Product s);
}
