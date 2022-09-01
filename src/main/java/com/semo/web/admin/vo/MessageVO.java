package com.semo.web.admin.vo;

public class MessageVO {

	 private String title;
	 private String content;
	 
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String cotent) {
		this.content = cotent;
	}
	
	@Override
	public String toString() {
		return "Message [title=" + title + ", content=" + content + "]";
	}
	 
	 
}
