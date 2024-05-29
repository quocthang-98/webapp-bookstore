package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.IPublisherDAO;
import com.webapp.mapper.PublisherMapper;
import com.webapp.model.PublisherModel;

public class PublisherDAO extends AbstractDAO<PublisherModel> implements IPublisherDAO {

	@Override
	public List<PublisherModel> findAll() {
		String sql = "SELECT * FROM publisher";
		return query(sql, new PublisherMapper());
	}

	@Override
	public PublisherModel findOne(Long id) {
		String sql = "SELECT * FROM publisher WHERE id = ?";
		List<PublisherModel> publishers = query(sql, new PublisherMapper(), id);
		return publishers.isEmpty() ? null : publishers.get(0);
	}

}
