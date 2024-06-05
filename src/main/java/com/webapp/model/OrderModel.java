package com.webapp.model;

public class OrderModel extends AbstractModel<OrderModel>{
	private Long userId;
	private Double totalPrice;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	
}
		