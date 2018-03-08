package com.sencerseven.blogbackend.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sencerseven.blogbackend.dao.ImagesDAO;
import com.sencerseven.blogbackend.dto.Images;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.service.ImagesService;

@Service("imagesService")
public class ImagesServiceImpl implements ImagesService{

	@Autowired
	ImagesDAO imagesDAO;

	@Override
	@Transactional
	public Images getImages(int id) {
		// TODO Auto-generated method stub
		return imagesDAO.getImages(id);
	}

	@Override
	@Transactional
	public boolean deleteImages(Images images) {
		// TODO Auto-generated method stub
		return imagesDAO.deleteImages(images);
	}

	@Override
	@Transactional
	public boolean addImages(Images images) {
		// TODO Auto-generated method stub
		return imagesDAO.addImages(images);
	}

	@Override
	@Transactional
	public boolean updateImages(Images images) {
		// TODO Auto-generated method stub
		return imagesDAO.updateImages(images);
	}

	@Override
	@Transactional
	public List<Images> getAllImages() {
		// TODO Auto-generated method stub
		return imagesDAO.getAllImages();
	}
	
	
}
