package com.sony.dao;

import java.util.List;

import com.sony.model.Cart;

public interface CartDao {

	
	 void addtocart(Cart c);
	 public List<Cart> findByPid(int pid,String name);
	 public void updatecart(Cart c);
	
}
