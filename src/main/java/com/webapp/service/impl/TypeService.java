package com.webapp.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.ITypeDAO;
import com.webapp.model.TypeModel;
import com.webapp.service.ITypeService;

public class TypeService implements ITypeService{
	
	@Inject
	private ITypeDAO typeDAO;

	@Override
	public List<TypeModel> findAll() {
		return typeDAO.findAll();
		
	}
 
}
