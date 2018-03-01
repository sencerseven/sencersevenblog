package com.sencerseven.blogbackend.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sencerseven.blogbackend.dao.CommentDAO;
import com.sencerseven.blogbackend.dto.Comment;
import com.sencerseven.blogbackend.service.CommentService;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDAO commentDAO;
	
	@Override
	@Transactional
	public Comment getComment(int id) {
		// TODO Auto-generated method stub
		return commentDAO.getComment(id); 
	}

	@Override
	@Transactional
	public boolean addComment(Comment comment) {
		// TODO Auto-generated method stub
		return commentDAO.addComment(comment);
	}

	@Override
	@Transactional
	public boolean deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		return commentDAO.deleteComment(comment);
	}

	@Override
	@Transactional
	public boolean updateComment(Comment comment) {
		// TODO Auto-generated method stub
		return commentDAO.updateComment(comment);
	}

	@Override
	@Transactional
	public List<Comment> getListComment() {
		// TODO Auto-generated method stub
		return commentDAO.getListComment();
	}

}
