package com.sony.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "CATEGORY")
@Component
public class Category {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
public int id;
public String name;
public String desc;
@OneToMany(targetEntity=Product.class,mappedBy = "category", cascade = CascadeType.ALL)
private Set<Product> products;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDesc() {
	return desc;
}
public void setDesc(String desc) {
	this.desc = desc;
}


	
}
