package com.webapp.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;
import com.webapp.model.PublisherModel;
import com.webapp.model.UserModel;

public class Validation {
	
	public static Boolean bookValidate(BookModel bookModel) {
		Boolean result = true;
		
		if (bookModel.getTitle() == null || bookModel.getTitle().equals("")) {
			bookModel.setIsNameNull(1); result = false;
		} else {
			for (BookModel book:bookModel.getResultList()) {
				if (book.getTitle().equals(bookModel.getTitle()) && !bookModel.getId().equals(book.getId())) {
					bookModel.setIsNameDublicate(1); result = false; break;
				}
			}
		}
		if (bookModel.getIsNameDublicate()==1 || bookModel.getIsNameNull()==1) bookModel.setIsNameNotOK(1);
		
		if (bookModel.getStocks() == null) {
			bookModel.setIsStockNull(1); result = false;
		} else {
			if (bookModel.getStocks()<0) {bookModel.setIsStockNegative(1); result = false;}
		}
		if (bookModel.getIsStockNegative()==1 || bookModel.getIsStockNull()==1) bookModel.setIsStockNotOK(1);
		
		if (bookModel.getPrice() == null) {
			bookModel.setIsPriceNull(1); result = false;
		} else {
			if (bookModel.getPrice()<=0) {bookModel.setIsPriceInvalid(1); result = false;}
		}
		if (bookModel.getIsPriceNull()==1 || bookModel.getIsPriceInvalid()==1) bookModel.setIsPriceNotOK(1);
		
		return result;
	}
	
	public static Boolean authorValidate(AuthorModel authorModel) {
		Boolean result = true;
		
		if (authorModel.getName() == null || authorModel.getName().equals("")) {
			authorModel.setIsNameNull(1); result = false;
		} else {
			for (AuthorModel author:authorModel.getResultList()) {
				if (author.getName().equals(authorModel.getName()) && !authorModel.getId().equals(author.getId())) {
					authorModel.setIsNameDublicate(1); result = false; break;
				}
			}
		}
		if (authorModel.getIsNameDublicate()==1 || authorModel.getIsNameNull()==1) authorModel.setIsNameNotOK(1);

		return result;
	}
	
	public static Boolean publisherValidate(PublisherModel publisherModel) {
		Boolean result = true;
		
		if (publisherModel.getName() == null || publisherModel.getName().equals("")) {
			publisherModel.setIsNameNull(1); result = false;
		} else {
			for (PublisherModel publisher:publisherModel.getResultList()) {
				if (publisher.getName().equals(publisherModel.getName()) && !publisherModel.getId().equals(publisher.getId())) {
					publisherModel.setIsNameDublicate(1); result = false; break;
				}
			}
		}
		if (publisherModel.getIsNameDublicate()==1 || publisherModel.getIsNameNull()==1) publisherModel.setIsNameNotOK(1);

		return result;
	}
	
	public static Boolean userValidate(UserModel userModel) {
		Boolean result = true;
		
		if (userModel.getLastName() == null || userModel.getLastName().equals("")) {
			userModel.setIsLastNameNull(1); result = false;
		} 
		if (userModel.getIsLastNameNull() == 1) userModel.setIsLastNameNotOK(1);
		
		if (userModel.getPassword() == null || userModel.getPassword().equals("")) {
			userModel.setIsPasswordNull(1); result = false;
		} else {
			Pattern letter = Pattern.compile("[a-zA-z]");
	        Pattern digit = Pattern.compile("[0-9]");
	        Pattern special = Pattern.compile ("[!@#$%&*()_+=|<>?{}\\[\\]~-]");
	        Matcher hasLetter = letter.matcher(userModel.getPassword());
	        Matcher hasDigit = digit.matcher(userModel.getPassword());
	        Matcher hasSpecial = special.matcher(userModel.getPassword());
	        
	        if (!hasLetter.find() || !hasDigit.find() || !hasSpecial.find() || userModel.getPassword().length()<6) {
	        		userModel.setIsPasswordUnvalidated(1); result = false;
	        }
		}
		if (userModel.getIsPasswordNull() == 1 || userModel.getIsPasswordUnvalidated() == 1) userModel.setIsPasswordNotOK(1);
		
		if (userModel.getEmail() == null || userModel.getEmail().equals("")) {
			userModel.setIsEmailNull(1); result = false;
		} else {
			for (UserModel user:userModel.getResultList()) {
				if (userModel.getEmail().equals(user.getEmail())) {
					userModel.setIsEmailDublicate(1); result = false; break;
				}
			}
		}
		if (userModel.getIsEmailDublicate()==1 || userModel.getIsEmailNull()==1) userModel.setIsEmailNotOK(1);
		
		
		if (userModel.getUsername() == null || userModel.getUsername().equals("")) {
			userModel.setIsUsernameNull(1); result = false;
		} else {
			for (UserModel user:userModel.getResultList()) {
				if (user.getUsername().equals(userModel.getUsername())) {
					userModel.setIsUsernameDublicate(1); result = false; break;
				}
			}
				
		}
		if (userModel.getIsUsernameDublicate()==1 || userModel.getIsUsernameNull()==1) userModel.setIsUserameNotOK(1);
		
		return result;
	}
}
