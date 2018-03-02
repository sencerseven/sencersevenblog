package com.sencerseven.blogbackend.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="Posts")
public class Posts implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column
	private String title;
	
	@Column
	private String content;
	
	@Column(name="post_url")
	private String postUrl;
	
	@ManyToOne
	@JoinColumn(name="category_id",nullable=false)
	private Category category;
	
	@OneToMany(fetch=FetchType.EAGER, mappedBy="posts",cascade= {CascadeType.ALL})
	private List<Comment> comment;
	
	@Temporal(TemporalType.DATE)
	private Date created_date;
	
	
	public Posts() {

	}
	
	public Posts(String title, String content, Category category) {
		this.title = title;
		this.content = content;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	
	
	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}

	public Date getCreated_date() {
		return created_date;
	}

	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	

	

	public String getPostUrl() {
		return postUrl;
	}

	public void setPostUrl(String postUrl) {
		this.postUrl = postUrl;
	}

	@Override
	public String toString() {
		return "Posts [id=" + id + ", title=" + title + ", content=" + content + ", category=" + category + "]";
	}


	
}


