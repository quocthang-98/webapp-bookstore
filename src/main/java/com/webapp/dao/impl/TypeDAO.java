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
}
