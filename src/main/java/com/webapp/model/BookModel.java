package com.webapp.model;

import java.sql.Timestamp;

public class BookModel extends AbstractModel<BookModel>{
	private String title;
	private String thumbnail;
	private Long authorId;
	private Double price;
	private Long typeId;
	private Timestamp publicationDate;
	private Long publisherId;
	private String description;
	private Long stocks;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public Long getAuthorId() {
		return authorId;
	}
	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Long getTypeId() {
		return typeId;
	}
	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}
	public Timestamp getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(Timestamp publicationDate) {
		this.publicationDate = publicationDate;
	}
	public Long getPublisherId() {
		return publisherId;
	}
	public void setPublisherId(Long publisherId) {
		this.publisherId = publisherId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Long getStocks() {
		return stocks;
	}
	public void setStocks(Long stocks) {
		this.stocks = stocks;
	}

	
}
		