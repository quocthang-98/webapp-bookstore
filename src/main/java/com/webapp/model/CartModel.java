package com.webapp.model;

public class CartModel extends AbstractModel<CartModel>{
	private Long userId;
	private Long bookId;
	private Long quantity;
	private Long orderId;
	private Integer ordered;
	
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
		