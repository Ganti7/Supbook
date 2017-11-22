package com.zenika.supbook.model;

import java.util.Date;

public class Message extends AbstractBusinessObject {

	private String content;
	private Date publishDate;
	private long owner;
	private long sender;
	
	public Message() {}
	
	public Message(long id, String content, Date publishDate, long owner, long sender) {
		super();
		this.setId(id);
		this.content = content;
		this.publishDate = publishDate;
		this.owner = owner;
		this.sender = sender;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	public String getPublishDate() {
		return publishDate.toString();
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public long getOwner() {
		return owner;
	}
	
	public void setOwner(long Owner) {
		this.owner = Owner;
	}
	
	public long getSender() {
		return sender;
	}

	public void setSender(long sender) {
		this.sender = sender;
	}
}
