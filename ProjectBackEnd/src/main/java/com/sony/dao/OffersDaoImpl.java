package com.sony.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sony.model.Category;
import com.sony.model.Offers;

@Repository("OffersDao")
public class OffersDaoImpl implements OffersDao{

	
	@Autowired
	private SessionFactory sessionFactory;

	public OffersDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public OffersDaoImpl() {
		super();
	}
	
	@Transactional
	public void SaveOffers(Offers c) {
		
		
		Session s=sessionFactory.getCurrentSession();
		s.save(c);
		System.out.println("success");
		
	}
	@Transactional
	public List<Offers> list() {
		@SuppressWarnings("unchecked")	
		List<Offers> listoffers = (List<Offers>) sessionFactory.getCurrentSession().createCriteria(Offers.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		System.out.println(listoffers);
		return listoffers;

	}
	@Transactional
	public Offers findByid(int id) {
		return (Offers)sessionFactory.getCurrentSession().get(Offers.class,id);
	}
	
	@Transactional
	public void updateoffer(Offers s) {
		Session c = sessionFactory.getCurrentSession();
		c.update(s);
		System.out.println("success");
		
	}
	@Transactional
	public void delete(Offers c) {
		Session s=sessionFactory.getCurrentSession();
		
		s.delete(c);
		
		
	}
}
