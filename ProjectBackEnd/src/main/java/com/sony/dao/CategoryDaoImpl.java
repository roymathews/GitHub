package com.sony.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sony.model.Category;





@Repository("CategoryDao")
public class CategoryDaoImpl implements CategoryDao{

@Autowired
private SessionFactory sessionFactory;

public CategoryDaoImpl(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}
public CategoryDaoImpl() {
	super();
}
@Transactional
public void SaveCategory(Category c) {
	Session s=sessionFactory.getCurrentSession();
	s.save(c);
	System.out.println("success");
	
	
}
@Transactional
public List<Category> list()
{
@SuppressWarnings("unchecked")	
List<Category> listcat = (List<Category>) sessionFactory.getCurrentSession().createCriteria(Category.class)
.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
System.out.println(listcat);
return listcat;

}
@Transactional
public Category findById(int id) {
	return (Category)sessionFactory.getCurrentSession().get(Category.class,id);
}


@Transactional
public void delete(Category c) {
	Session s=sessionFactory.getCurrentSession();
	
	s.delete(c);
	
	
}
@Transactional
public void updatecategory(Category s) {
	Session c = sessionFactory.getCurrentSession();
	c.update(s);
	System.out.println("success");
}



}