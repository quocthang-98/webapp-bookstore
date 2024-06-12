package com.webapp.dao;

import java.util.List;

import com.webapp.model.AuthorModel;
import com.webapp.model.PublisherModel;

public interface IPublisherDAO {
	List<PublisherModel> findAll();
	PublisherModel findOne(Long id);
	Long save(PublisherModel publisherModel);
	void update(PublisherModel publisherModel);
	void delete(long id);
}
