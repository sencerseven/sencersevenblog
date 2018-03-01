package com.sencerseven.blogbackend.dao;

import java.util.List;

import com.sencerseven.blogbackend.dto.Comment;

public interface CommentDAO {
	
	
	public Comment getComment(int id);
	public boolean addComment(Comment comment);
	public boolean deleteComment(Comment comment);
	public boolean updateComment(Comment comment);
	
	public List<Comment> getListComment();

}
