package com.sony.dao;

import java.util.List;

import com.sony.model.Category;



public interface CategoryDao {
	List<Category> list();
	void SaveCategory(Category c);
	public Category  findById(int id);
	void delete(Category p);
	void updatecategory(Category s);
}
