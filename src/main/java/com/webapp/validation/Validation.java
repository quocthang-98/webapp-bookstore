package com.webapp.validation;

import com.webapp.model.AuthorModel;
import com.webapp.model.BookModel;
import com.webapp.model.PublisherModel;

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
}
