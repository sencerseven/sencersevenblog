package com.sencerseven.blogbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sencerseven.blogbackend.dao.CommentDAO;
import com.sencerseven.blogbackend.dto.Comment;

@Repository("commentDAO")
public class CommentDAOImpl implements CommentDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public Comment getComment(int id) {
		try {
			return sessionFactory.getCurrentSession().get(Comment.class, id);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	@Override
	public boolean addComment(Comment comment) {
		try {
			sessionFactory.getCurrentSession().persist(comment);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public boolean deleteComment(Comment comment) {
		try {
			sessionFactory.getCurrentSession().delete(comment);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}

	@Override
	public boolean updateComment(Comment comment) {		
		try {
			sessionFactory.getCurrentSession().update(comment);
		return true;
		} catch (Exception e) {
		
		}
		return false;
	}

	@Override
	public List<Comment> getListComment() {
		try {
			String listQuery = "FROM Comment";
			Query<Comment> query = sessionFactory.getCurrentSession().createQuery(listQuery,Comment.class);
			return query.getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
