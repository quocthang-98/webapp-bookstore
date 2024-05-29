package com.webapp.servicce;

import java.util.List;

import com.webapp.model.PublisherModel;

public interface IPublisherService {
	List<PublisherModel> findAll();
}
