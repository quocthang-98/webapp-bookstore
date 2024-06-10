package com.webapp.dao;

import java.util.List;

import com.webapp.model.TypeModel;

public interface ITypeDAO {
	List<TypeModel> findAll();
	TypeModel findOne(Long id);
	List<TypeModel> findByKeyWord(String keyWord1, String keyWord2, String keyWord3);
}
