package com.sony.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.sony.model.Product;


@Repository("ProductDao")
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	public ProductDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public ProductDaoImpl() {
		super();
	}


	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession().createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		System.out.println(listProduct);
		return listProduct;
	}

	
	@Transactional
	public void saveProduct(Product p)
	{
		Session s=sessionFactory.getCurrentSession();
		s.save(p);
		
		// TODO Auto-generated method stub
		
	}


	@Transactional
	public Product findById(int id) {
		return (Product)sessionFactory.openSession().get(Product.class,id);
	}


	@Transactional
	public void delete(Product p) {
		Session s=sessionFactory.openSession();
		s.beginTransaction();
		s.delete(p);
		s.getTransaction().commit();
		s.close();sessionFactory.openSession().delete(p);
		
	}

	@Transactional
	public void updateproduct(Product s) {
		Session c = sessionFactory.getCurrentSession();
		c.update(s);
		System.out.println("success");
	}

	@Transactional
	public List<Product> findByCatId(int id) {
		
		Session s=sessionFactory.openSession();
		List<Product> results =s.createQuery("from Product where CID="+id).list();
	s.close();
		return results;
	}

}
