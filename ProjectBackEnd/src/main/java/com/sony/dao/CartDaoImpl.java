package com.sony.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sony.model.Cart;





@Repository("CartDao")
public class CartDaoImpl implements CartDao{
	@Autowired
	private SessionFactory sessionFactory;
	public CartDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public CartDaoImpl() {
		super();
	}
	@Transactional
	public void addtocart(Cart c) {
		Session s=sessionFactory.getCurrentSession();
		s.save(c);
		System.out.println("success");
		
		
	}
	@Transactional
	public List<Cart> findByPid(int pid,String name) {
		Session s=sessionFactory.getCurrentSession();		
         List<Cart> results = s.createQuery("from Cart where PID="+pid+ "and USER='"+name+"'").list();		
		
			return results;
			
		
		
	}
	@Transactional
	public void updatecart(Cart c) 
	{
		Session s = sessionFactory.getCurrentSession();
		s.update(c);
	}
	
		@Transactional
		public List<Cart> list(String name) {
			Session s=sessionFactory.getCurrentSession();		
			@SuppressWarnings("unchecked")
			List<Cart> cartlist = s.createQuery("from Cart where  USER='"+name+"'").list();
			System.out.println(cartlist);
			return cartlist;
		}
		
		@Transactional
		public Cart findByid(int id) {
			return (Cart)sessionFactory.getCurrentSession().get(Cart.class,id);
			
		}
		@Transactional
		public void removecart(Cart c) {
			Session s=sessionFactory.getCurrentSession();
			
			s.delete(c);
			
			
		}
		@Transactional
		public void delete(Cart c) {
			Session s=sessionFactory.openSession();
			s.beginTransaction();
			
			s.delete(c);
			s.getTransaction().commit();
			s.close();
		}
		
}
