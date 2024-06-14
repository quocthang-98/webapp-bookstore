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

	@Override
	public Long save(PublisherModel publisherModel) {
		String sql = "INSERT INTO publisher (name, headquarters_location, created_by, date_created) VALUE(?, ?, ?, ?)";
		return insert(sql, publisherModel.getName(), publisherModel.getHeadquarterLocation(), publisherModel.getCreatedBy(), publisherModel.getCreatedDate());
	}

	@Override
	public void update(PublisherModel publisherModel) {
		String sql = "UPDATE publisher SET name = ?, headquarters_location = ? WHERE id = ?";
		update(sql, publisherModel.getName(), publisherModel.getHeadquarterLocation(), publisherModel.getId());
		
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM publisher WHERE id = ?";
		update(sql, id);
		
	}

}
