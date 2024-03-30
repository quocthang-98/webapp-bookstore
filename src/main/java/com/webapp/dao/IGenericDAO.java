package com.webapp.dao;

import java.util.List;

import com.webapp.mapper.RowMapper;

public interface IGenericDAO<T> {
	List<T> query(String sql, RowMapper<T> rowMapper, Object... objects);

	void update(String sql, Object... objects);

	Long insert(String sql, Object... objects);
}
