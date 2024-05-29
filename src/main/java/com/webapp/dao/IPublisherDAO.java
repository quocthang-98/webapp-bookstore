package com.webapp.dao;

import java.util.List;

import com.webapp.model.PublisherModel;

public interface IPublisherDAO {
	List<PublisherModel> findAll();
	PublisherModel findOne(Long id);
}
