package com.webapp.service.impl;

import java.sql.Timestamp;
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

	@Override
	public AuthorModel save(AuthorModel authorModel) {
		authorModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long id = authorDAO.save(authorModel);
		return authorDAO.findOne(id);
	}

	@Override
	public AuthorModel update(AuthorModel authorModel) {
		authorDAO.update(authorModel);
		return authorDAO.findOne(authorModel.getId());
	}

	@Override
	public void delete(long id) {
		authorDAO.delete(id);
	}

	@Override
	public AuthorModel findOne(Long id) {
		return authorDAO.findOne(id);
	}
 
}
