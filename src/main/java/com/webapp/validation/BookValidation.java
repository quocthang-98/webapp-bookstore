package com.webapp.validation;

import com.webapp.model.BookModel;

public class BookValidation {
	
	public static Boolean validate(BookModel bookModel) {
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
}
