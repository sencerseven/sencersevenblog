package com.sencerseven.blogbackend.dao;

import java.util.List;

import com.sencerseven.blogbackend.dto.Images;
import com.sencerseven.blogbackend.dto.Posts;

public interface ImagesDAO {

	public Images getImages(int id);
	public boolean deleteImages(Images images);
	public boolean addImages(Images images);
	public boolean updateImages(Images images);
	
	public List<Images> getAllImages();
	
}
