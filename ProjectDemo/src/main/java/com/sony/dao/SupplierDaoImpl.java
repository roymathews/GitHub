package com.sony.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sony.model.Supplier;

@Repository("SupplierDao")
public class SupplierDaoImpl implements SupplierDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	public SupplierDaoImpl()
	{
		
	super();
	}
	@Transactional
	public void SaveSupplier(Supplier s) {
		
	Session c = sessionFactory.getCurrentSession();
	c.save(s);
	System.out.println("success");
	
		
	}
	@Transactional
	public List<Supplier> list()
	{
	@SuppressWarnings("unchecked")	
	List<Supplier> listsup = (List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class)
	.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	System.out.println(listsup);
	return listsup;

	}
	@Transactional
	public Supplier findById(int id) {
		return (Supplier)sessionFactory.openSession().get(Supplier.class,id);
	}


	@Transactional
	public void delete(Supplier p) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.delete(p);
		s.getTransaction().commit();
		s.close();sessionFactory.openSession().delete(p);
		
	}
	@Transactional
	public void updatesupplier(Supplier s) {
		Session c = sessionFactory.getCurrentSession();
		c.update(s);
		System.out.println("success");
	}


	
}
