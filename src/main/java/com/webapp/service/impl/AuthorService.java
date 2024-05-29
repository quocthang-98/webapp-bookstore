package com.webapp.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.webapp.dao.IAuthorDAO;
import com.webapp.dao.ITypeDAO;
import com.webapp.model.AuthorModel;
import com.webapp.model.TypeModel;
import com.webapp.servicce.IAuthorService;
import com.webapp.servicce.IBookService;
import com.webapp.servicce.ITypeService;

public class AuthorService implements IAuthorService{
	
	@Inject
	private IAuthorDAO authorDAO;

	@Override
	public List<AuthorModel> findAll() {
		return authorDAO.findAll();
		
	}
 
}
