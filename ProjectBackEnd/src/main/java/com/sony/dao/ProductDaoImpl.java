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
		return (Product)sessionFactory.getCurrentSession().get(Product.class,id);
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
	public List<Product> findByCatId(int id,int sort) {
		Session s=sessionFactory.openSession();
		int a = 5000,b=10000,c=20000;
		switch(sort){  
	    case 1: List<Product> results =s.createQuery("from Product where CID="+id+ "and RATE<"+a).list();	
		         return results;  
	    case 2: List<Product> results1 =s.createQuery("from Product where CID="+id+"AND RATE BETWEEN '"+a+"' AND '"+b+"'").list();	
		return results1; 
	    case 3:List<Product> results2 =s.createQuery("from Product where CID="+id+"AND RATE BETWEEN '"+b+"' AND '"+c+"'").list();	
		return results2;  
	    case 4:List<Product> results3 =s.createQuery("from Product where CID="+id+ "and RATE>"+c).list();	
		return results3;
	    default:List<Product> results4 =s.createQuery("from Product where CID="+id).list();		
		return results4; 
		
	    }
	

		
	}

@Transactional
	public List<Product> list2(int id) {
	Session s=sessionFactory.openSession();
	List<Product> results =s.createQuery("from Product WHERE category.id IN (select category.id from Product WHERE ID="+id+")").list();	
    return results; 
	}


}
