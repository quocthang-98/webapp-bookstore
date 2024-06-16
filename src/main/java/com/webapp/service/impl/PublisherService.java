package com.webapp.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IPublisherDAO;
import com.webapp.model.PublisherModel;
import com.webapp.servicce.IPublisherService;

public class PublisherService implements IPublisherService{
	
	@Inject
	private IPublisherDAO publisherDAO;

	@Override
	public List<PublisherModel> findAll() {
		return publisherDAO.findAll();
		
	}

	@Override
	public PublisherModel save(PublisherModel publisherModel) {
		publisherModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long id = publisherDAO.save(publisherModel);
		return publisherDAO.findOne(id);
	}

	@Override
	public PublisherModel update(PublisherModel publisherModel) {
		publisherDAO.update(publisherModel);
		return publisherDAO.findOne(publisherModel.getId());
	}

	@Override
	public void delete(long id) {
		publisherDAO.delete(id);	
	}

	@Override
	public PublisherModel findOne(Long id) {
		return publisherDAO.findOne(id);
	}
 
}
