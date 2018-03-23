package com.sencerseven.blogbackend.dto;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.ColumnDefault;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

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
	
	@Transient
	private List<MultipartFile> files;
	
	@Transient
	private String dateString;
	
	@ManyToOne
	@JoinColumn(name="user_id",nullable=false)
	private User user;
	
	@Column(name="slider_status" , columnDefinition="boolean default true" ,nullable = false)
	private boolean sliderStatus; 
	
	

	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

	@Transient
	private int categoryId;
	
	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	@OneToMany(mappedBy="posts")
	private List<Comment> comment = new ArrayList<Comment>();
	
	@OneToMany(mappedBy="posts", cascade= {CascadeType.ALL})
	private List<Images> images;
	
	@DateTimeFormat(pattern="dd MMM yyyy")
	@Temporal(TemporalType.DATE)
	private Date created_date;
	
	@Column(name="view",nullable= false,columnDefinition="int default 0")
	private int view;
	
	
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
	


	public List<Images> getImages() {
		return images;
	}

	public void setImages(List<Images> images) {
		this.images = images;
	}

	
	
	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	

	

	public boolean isSliderStatus() {
		return sliderStatus;
	}

	public void setSliderStatus(boolean sliderStatus) {
		this.sliderStatus = sliderStatus;
	}

	public String getDateString() {
		 DateFormat targetFormat = new SimpleDateFormat("dd MMM yyyy",Locale.forLanguageTag("tr-TR"));
		 String formattedDate = targetFormat.format(created_date);
	
		return formattedDate;
	}

	@Override
	public String toString() {
		return "Posts [id=" + id + ", title=" + title + ", content=" + content + ", category=" + category + "]";
	}


	
}


