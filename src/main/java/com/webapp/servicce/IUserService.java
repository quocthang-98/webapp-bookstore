package com.webapp.servicce;

import java.util.List;

import com.webapp.model.BookModel;
import com.webapp.model.UserModel;

public interface IUserService {
	public UserModel findByUsernameAndPassword(String username, String password);
}
