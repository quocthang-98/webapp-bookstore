package com.webapp.model;

public class CartModel extends AbstractModel<CartModel>{
	private Long userId;
	private Long bookId;
	private Long quantity;
	private Long orderId;
	private Integer ordered;
	private BookModel bookModel;
	private Double totalPrice;
	private Integer numberItem;
	private String bookName;
	
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public Integer getNumberItem() {
		return numberItem;
	}
	public void setNumberItem(Integer numberItem) {
		this.numberItem = numberItem;
	}
	public void setTotalPrice() {
		totalPrice = 0.0;
		for (CartModel cart: getResultList()) {
			totalPrice+= cart.getBookModel().getPrice() * cart.getQuantity();
		}
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public BookModel getBookModel() {
		return bookModel;
	}
	public void setBookModel(BookModel bookModel) {
		this.bookModel = bookModel;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getBookId() {
		return bookId;
	}
	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}
	public Long getQuantity() {
		return quantity;
	}
	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	public Integer getOrdered() {
		return ordered;
	}
	public void setOrdered(Integer ordered) {
		this.ordered = ordered;
	}
	
	
}
		