package com.webapp.model;

import java.sql.Date;

public class BookModel extends AbstractModel<BookModel>{
	private String title;
	private String thumbnail;
	private Long authorId;
	private Double price;
	private Long typeId;
	private Long genreId;
	private Date publicationDate;
	private Long publisherId;
	private String description;
	private Long stocks;
	private Integer page;
	private Integer limit;
	private Integer totalPages;
	private Integer totalItem;
	private String typeName;
	private String publisherName;
	private String genreName;
	private String authorName;
	private String publicationDateString;
	private Long[] typeList;
	private Long[] genreList;
	private String typeListString;
	private String genreListString;
	private String sortBy;
	
	private Integer isNameNotOK = 0;
	private Integer isStockNotOK = 0;
	private Integer isPriceNotOK = 0;
	private Integer isNameNull = 0;
	private Integer isNameDublicate = 0;
	private Integer isStockNull = 0;
	private Integer isStockNegative = 0;
	private Integer isPriceNull = 0;
	private Integer isPriceInvalid = 0;
	
	
	
	
	public String getSortBy() {
		return sortBy;
	}
	public void setSortBy(String sortBy) {
		this.sortBy = sortBy;
	}
	public String getTypeListString() {
		return typeListString;
	}
	public void setTypeListString(String typeListString) {
		this.typeListString = typeListString;
	}
	public String getGenreListString() {
		return genreListString;
	}
	public void setGenreListString(String genreListString) {
		this.genreListString = genreListString;
	}
	public Long[] getTypeList() {
		return typeList;
	}
	public void setTypeList(Long[] typeList) {
		this.typeList = typeList;
	}
	public Long[] getGenreList() {
		return genreList;
	}
	public void setGenreList(Long[] genreList) {
		this.genreList = genreList;
	}
	public String getPublicationDateString() {
		return publicationDateString;
	}
	public void setPublicationDateString(String publicationDateString) {
		this.publicationDateString = publicationDateString;
	}
	public Integer getIsNameNotOK() {
		return isNameNotOK;
	}
	public void setIsNameNotOK(Integer isNameNotOK) {
		this.isNameNotOK = isNameNotOK;
	}
	public Integer getIsStockNotOK() {
		return isStockNotOK;
	}
	public void setIsStockNotOK(Integer isStockNotOK) {
		this.isStockNotOK = isStockNotOK;
	}
	public Integer getIsPriceNotOK() {
		return isPriceNotOK;
	}
	public void setIsPriceNotOK(Integer isPriceNotOK) {
		this.isPriceNotOK = isPriceNotOK;
	}
	public Integer getIsPriceInvalid() {
		return isPriceInvalid;
	}
	public void setIsPriceInvalid(Integer isPriceInvalid) {
		this.isPriceInvalid = isPriceInvalid;
	}
	public Integer getIsNameNull() {
		return isNameNull;
	}
	public void setIsNameNull(Integer isNameNull) {
		this.isNameNull = isNameNull;
	}
	public Integer getIsNameDublicate() {
		return isNameDublicate;
	}
	public void setIsNameDublicate(Integer isNameDublicate) {
		this.isNameDublicate = isNameDublicate;
	}
	public Integer getIsStockNull() {
		return isStockNull;
	}
	public void setIsStockNull(Integer isStockNull) {
		this.isStockNull = isStockNull;
	}
	public Integer getIsStockNegative() {
		return isStockNegative;
	}
	public void setIsStockNegative(Integer isStockNegative) {
		this.isStockNegative = isStockNegative;
	}
	public Integer getIsPriceNull() {
		return isPriceNull;
	}
	public void setIsPriceNull(Integer isPriceNull) {
		this.isPriceNull = isPriceNull;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getPublisherName() {
		return publisherName;
	}
	public void setPublisherName(String publisherName) {
		this.publisherName = publisherName;
	}
	public String getGenreName() {
		return genreName;
	}
	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}
	public Date getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(Date publicationDate) {
		this.publicationDate = publicationDate;
	}
	public Double getPrice() {
		return price;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Long getGenreId() {
		return genreId;
	}
	public void setGenreId(Long genreId) {
		this.genreId = genreId;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}
	public Integer getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}
	public Integer getTotalItem() {
		return totalItem;
	}
	public void setTotalItem(Integer totalItem) {
		this.totalItem = totalItem;
	}
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
	public Long getTypeId() {
		return typeId;
	}
	public void setTypeId(Long typeId) {
		this.typeId = typeId;
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
		