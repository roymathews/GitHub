package com.sony.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sony.model.Orders;
@Repository("OrdersDao")
public class OrdersDaoImpl implements OrdersDao {

	@Autowired
	private SessionFactory sessionFactory;

	public OrdersDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public OrdersDaoImpl() {
		super();
	}

	@Transactional
	public void saveOrders(Orders o) {
		Session s = sessionFactory.getCurrentSession();
		s.save(o);
	
		
	}

}
