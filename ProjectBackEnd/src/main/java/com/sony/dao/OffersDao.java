package com.sony.dao;

import java.util.List;


import com.sony.model.Offers;

public interface OffersDao {

	public void SaveOffers(Offers c);
	List<Offers> list();
}
