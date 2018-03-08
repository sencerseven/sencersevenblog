package com.sencerseven.blogbackend.daoimpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sencerseven.blogbackend.dao.ImagesDAO;
import com.sencerseven.blogbackend.dto.Images;
import com.sencerseven.blogbackend.dto.Posts;

@Repository("imagesDAO")
public class ImagesDAOImpl implements ImagesDAO{

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Images getImages(int id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(Images.class, id);
	}

	@Override
	public boolean deleteImages(Images images) {
		try {
			sessionFactory.getCurrentSession().delete(images);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public boolean addImages(Images images) {
		try {
			sessionFactory.getCurrentSession().persist(images);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public boolean updateImages(Images images) {
		try {
			sessionFactory.getCurrentSession().update(images);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public List<Images> getAllImages() {
		try {
			Query<Images> query = sessionFactory.getCurrentSession().createQuery("FROM IMAGES",Images.class);
			return query.getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	

}
