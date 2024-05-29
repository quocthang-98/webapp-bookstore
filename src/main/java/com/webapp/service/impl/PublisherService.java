package com.webapp.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IPublisherDAO;
import com.webapp.dao.ITypeDAO;
import com.webapp.model.PublisherModel;
import com.webapp.model.TypeModel;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.IPublisherService;
import com.webapp.servicce.ITypeService;

public class PublisherService implements IPublisherService{
	
	@Inject
	private IPublisherDAO publisherDAO;

	@Override
	public List<PublisherModel> findAll() {
		return publisherDAO.findAll();
		
	}
 
}
