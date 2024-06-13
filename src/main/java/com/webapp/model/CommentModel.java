package com.webapp.model;

public class CommentModel extends AbstractModel<CommentModel>{
	private String content;
	private Long userId;
	private Long bookId;
	private Long likes;
	private String userName;
	private String bookName;
	
	private LikeCommentModel likeCommentModel;
	private Integer likeNumber;

	
	public LikeCommentModel getLikeCommentModel() {
		return likeCommentModel;
	}
	public void setLikeCommentModel(LikeCommentModel likeCommentModel) {
		this.likeCommentModel = likeCommentModel;
	}
	public Integer getLikeNumber() {
		return likeNumber;
	}
	public void setLikeNumber(Integer likeNumber) {
		this.likeNumber = likeNumber;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	
	
}
		