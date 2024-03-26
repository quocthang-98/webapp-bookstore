package com.webapp.dao;

import java.util.List;

import com.webapp.model.TypeModel;

public interface ITypeDAO {
	List<TypeModel> findAll();	
}
