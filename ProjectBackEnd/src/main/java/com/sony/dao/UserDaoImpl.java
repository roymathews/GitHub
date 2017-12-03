package com.sony.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sony.model.User;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;

	public UserDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public UserDaoImpl() {
		super();
	}
	@Transactional
	public void saveUser(User p) {
		Session s=sessionFactory.getCurrentSession();
		s.save(p);
		System.out.println("success");
		
		
	}
	
	

}
