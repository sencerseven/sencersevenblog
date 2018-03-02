package com.sencerseven.blogbackend.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import javassist.CtField.Initializer;

@Entity
@Table(name="Category")
public class Category implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private int id;
	
	@Column(name="category_name")
	private String categoryName;
	
	@Column(name="category_description")
	private String categoryDescription;
	
	@Column(name = "is_active")
	private boolean active;
	
	@Column(name="category_url")
	private String categoryUrl;

	@OneToMany(mappedBy="category",cascade =  {CascadeType.ALL})
	private List<Posts> posts;
	
	
	public Category() {
	
	}
	


	public Category(String categoryName, String categoryDescription, boolean active, String categoryUrl,
			List<Posts> posts) {
		this.categoryName = categoryName;
		this.categoryDescription = categoryDescription;
		this.active = active;
		this.categoryUrl = categoryUrl;
		this.posts = posts;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	
	
	public List<Posts> getPosts() {
		return posts;
	}

	public void setPosts(List<Posts> posts) {
		this.posts = posts;
	}
	

	public String getCategoryUrl() {
		return categoryUrl;
	}

	public void setCategoryUrl(String categoryUrl) {
		this.categoryUrl = categoryUrl;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", categoryName=" + categoryName + ", categoryDescription=" + categoryDescription
				+ ", active=" + active + ", posts=" + posts + "]";
	}

	public void add(Posts tempPosts) {
		if(posts == null)
			posts = new ArrayList<>();
		
		posts.add(tempPosts);
		
		tempPosts.setCategory(this);
		
		
	}
	
	
	
	
	
}
