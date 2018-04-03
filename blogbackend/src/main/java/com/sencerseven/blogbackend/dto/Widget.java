package com.sencerseven.blogbackend.dto;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="Widget")
public class Widget {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "code")
	private String code;
	
	@Column(name="description")
	private String description;
	
	@ManyToMany(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinTable(
			name="Posts_Widget",
			joinColumns= {@JoinColumn(name="widget_id")},
			inverseJoinColumns = {@JoinColumn(name="posts_id")})
	private List<Posts> posts = new ArrayList<>();

	
	
	public Widget() {
	
	}

	

	public Widget(String code, String description, List<Posts> posts) {
		this.code = code;
		this.description = description;
		this.posts = posts;
	}



	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public List<Posts> getPosts() {
		return posts;
	}



	public void setPosts(List<Posts> posts) {
		this.posts = posts;
	}

	
	
	
	
}
