package com.sencerseven.blogbackend.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="comment")
public class Comment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Id;
	
	@Column(name="comment")
	private String comment; 
	
	@ManyToOne
	@JoinColumn(name="posts_id",nullable = false)
	private Posts posts;

	public Comment() {
	
	}
	
	public Comment(String comment, Posts posts) {
		this.comment = comment;
		this.posts = posts;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Posts getPosts() {
		return posts;
	}

	public void setPosts(Posts posts) {
		this.posts = posts;
		posts.getComment().add(this);
	}

	@Override
	public String toString() {
		return "Comment [Id=" + Id + ", comment=" + comment + ", posts=" + posts + "]";
	}

	
	
}
