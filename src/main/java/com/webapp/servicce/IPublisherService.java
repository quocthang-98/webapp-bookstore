package com.webapp.servicce;

import java.util.List;

import com.webapp.model.PublisherModel;

public interface IPublisherService {
	List<PublisherModel> findAll();
	PublisherModel save(PublisherModel publisherModel);
	PublisherModel update(PublisherModel publisherModel);
	void delete(long id);
	PublisherModel findOne(Long id);
}
