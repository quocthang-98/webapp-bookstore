package com.webapp.dao.impl;

import java.util.List;

import com.webapp.dao.ITypeDAO;
import com.webapp.mapper.TypeMapper;
import com.webapp.model.TypeModel;

public class TypeDAO extends AbstractDAO<TypeModel> implements ITypeDAO {

	@Override
	public List<TypeModel> findAll() {
		String sql = "SELECT * FROM type";
		return query(sql, new TypeMapper());
	}

	@Override
	public TypeModel findOne(Long id) {
		String sql = "SELECT * FROM type WHERE id = ?";
		List<TypeModel> types = query(sql, new TypeMapper(), id);
		return types.isEmpty() ? null : types.get(0);
	}
}
