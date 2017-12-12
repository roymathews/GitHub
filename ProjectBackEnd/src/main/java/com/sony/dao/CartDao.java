package com.sony.dao;

import java.util.List;

import com.sony.model.Cart;


public interface CartDao {

	
	 void addtocart(Cart c);
	 public List<Cart> findByPid(int pid,String name);
	 public Cart findByid(int id);
	 public void updatecart(Cart c);
	 List<Cart> list(String name);
	void removecart(Cart id);
	void delete(Cart c);
	
}
