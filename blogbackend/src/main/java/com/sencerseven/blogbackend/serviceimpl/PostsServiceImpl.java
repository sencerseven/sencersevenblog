package com.sencerseven.blogbackend.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Service;

import com.sencerseven.blogbackend.dao.PostsDAO;
import com.sencerseven.blogbackend.dto.Category;
import com.sencerseven.blogbackend.dto.Posts;
import com.sencerseven.blogbackend.funtions.BlogBackendFunctions;
import com.sencerseven.blogbackend.service.PostsService;

@Service("postsService")
public class PostsServiceImpl implements PostsService{

	@Autowired
	PostsDAO postsDAO;
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public Posts getPosts(int id) {
		Posts post = postsDAO.getPosts(id);
		Hibernate.initialize(post.getComment());
		return post;
	}

	@Override
	@Transactional(rollbackOn = Exception.class)
	public void addPosts(Posts posts) {
		postsDAO.addPosts(posts);
		posts.setPostUrl(BlogBackendFunctions.toPrettyURL(posts.getTitle(),posts.getId()));
	}

	@Override
	@Transactional
	public boolean updatePosts(Posts posts) {
		// TODO Auto-generated method stub
		return postsDAO.updatePosts(posts);
	}

	@Override
	@Transactional
	public boolean deletePosts(Posts posts) {
		// TODO Auto-generated method stub
		return postsDAO.deletePosts(posts);
	}

	@Override
	@Transactional
	public List<Posts> allPosts() {
		// TODO Auto-generated method stub
		return postsDAO.allPosts();
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(Posts posts) {
		postsDAO.saveOrUpdate(posts);
		posts.setPostUrl(BlogBackendFunctions.toPrettyURL(posts.getTitle(),posts.getId()));	
		return true;
				
	}
	
	@Override
	@Transactional
	public Posts getLastPosts() {
		try {
			
			String queryString = "FROM Posts p ORDER BY p.id DESC";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString, Posts.class);
			query.setMaxResults(1);
			Posts post = query.getSingleResult();
			Hibernate.initialize(post.getComment());
			Hibernate.initialize(post.getImages());
			return post;
			
		} catch (Exception e) {
		
		}
		return null;
	}

	@Override
	@Transactional
	public List<Posts> getLimitLastPosts(int limit, int startAt) {
		try {
			String queryString = "FROM Posts p ORDER BY p.id DESC";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString, Posts.class);
			query.setMaxResults(limit);
			query.setFirstResult(startAt);
			List<Posts> posts = query.getResultList();
			for(Posts tempPost : posts) {
				Hibernate.initialize(tempPost.getImages());
			}
			
			return query.getResultList();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	
	@Override
	@Transactional
	public Long countPost(Category category) {
		String queryString = "SELECT COUNT(*) FROM Posts WHERE category.id = :categoryId";
		
		try {

			Query<Long> query = sessionFactory.getCurrentSession().createQuery(queryString,Long.class);
			query.setParameter("categoryId", category.getId());
			return query.uniqueResult();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	
		
	}
	
	
	@Override
	@Transactional
	public List<Posts> getLimitLastPostsByCategory(Category categories,int limit, int startAt) {
		
		String queryString ="FROM Posts p WHERE p.category.id = :categoryId ORDER BY p.view DESC";
		
		try {
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
			query.setParameter("categoryId", categories.getId());
			query.setFirstResult(startAt);
			query.setMaxResults(limit);
			List<Posts> posts = query.getResultList();
			
			for(Posts tempPosts : posts) {
				Hibernate.initialize(tempPosts.getImages());
				Hibernate.initialize(tempPosts.getComment());
			}
			
			return posts;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	

	@Override
	@Transactional
	public Posts getByUrlName(String tempUrl) {
		
		
		try {	
			
			String queryString = ("FROM Posts p WHERE p.postUrl = :postUrl");
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
			query.setParameter("postUrl", tempUrl);
			Posts post = query.getSingleResult();
			Hibernate.initialize(post.getComment());
			Hibernate.initialize(post.getImages());
			return post;
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	@Override
	@Transactional
	public List<Posts> getTrendPosts(int limit, int startAt,@Nullable Integer categoryId){
		
		try {
			String queryString;
			Query<Posts> query;
			if(categoryId == null) {				
				queryString = ("FROM Posts");
				query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
			}
			else {
				queryString = ("FROM Posts p WHERE p.category.id =:categoryId ORDER BY p.view DESC");
				query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
				query.setParameter("categoryId", (int)categoryId);
			}
			query.setFirstResult(startAt);
			query.setMaxResults(limit);

			List<Posts> postList = query.getResultList();
			for(Posts tempPost : postList) {
				Hibernate.initialize(tempPost.getImages());
				Hibernate.initialize(tempPost.getComment());
			}
			
			return postList;
			
		}catch (Exception e) {

		}
		return null;
		
		
	}
	
	
	@Override
	@Transactional
	public List<Posts> getRecentPost(int userId,int startAt , int limit){
		
		try {
			String queryString = "FROM Posts p WHERE p.user.id = :userId ORDER BY p.created_date DESC";
					Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
					query.setParameter("userId", userId);
					List<Posts> postList = query.getResultList();
					for (Posts post : postList) {
						Hibernate.initialize(post.getImages());
						Hibernate.initialize(post.getComment());
					}
					return postList;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	@Override
	@Transactional
	public List<Posts> getBackPost(Posts post,int startAt, int limit) {
		
		try {
			String queryString = "FROM Posts p WHERE p.id < :currentId AND p.category.id = :categoryId ORDER BY p.id DESC";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
			query.setParameter("currentId", post.getId());
			query.setParameter("categoryId", post.getCategory().getId());
			query.setFirstResult(startAt);
			query.setMaxResults(limit);
			List<Posts> postList = query.getResultList();
			return postList;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return null;
	}
	@Override
	@Transactional
	public List<Posts> getNextPost(Posts post,int startAt, int limit) {
		
		try {
			String queryString = "FROM Posts p WHERE p.id > :currentId AND p.category.id = :categoryId ORDER BY p.id ASC";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(queryString,Posts.class);
			query.setParameter("currentId", post.getId());
			query.setParameter("categoryId", post.getCategory().getId());
			query.setFirstResult(startAt);
			query.setMaxResults(limit);
			List<Posts> postList = query.getResultList();
			return postList;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return null;
	}
	

	@Override
	@Transactional
	public List<Posts> getSliderPost(int startAt,int limit){
		try {
			String stringQuery = "From Posts p WHERE p.sliderStatus = true ORDER BY p.id DESC ";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(stringQuery,Posts.class);
			query.setFirstResult(startAt);
			query.setMaxResults(limit);
			List<Posts> posts =  query.getResultList();
			
			for(Posts post : posts) {
				Hibernate.initialize(post.getImages());
				Hibernate.initialize(post.getComment());
			}
			return posts;	
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}

	@Override
	@Transactional
	public List<Posts> featuredPost(int startAt, int limit) {
	
		try {
			String stringQuery = "SELECT p From Posts p JOIN p.widgets w WHERE w.code = :code ";
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(stringQuery,Posts.class);
			query.setParameter("code","FP");
			query.setFirstResult(startAt);
			query.setMaxResults(limit);
			List<Posts> posts = query.getResultList();
			
			for(Posts post : posts) {
				Hibernate.initialize(post.getImages());
			}
			
			
			return posts;
			
			
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return null;
	}
	
	@Override
	@Transactional
	public List<Posts> searchPostLike(String text){
		String stringQuery = "FROM Posts WHERE title LIKE :title OR content LIKE :content";
		try {
			Query<Posts> query = sessionFactory.getCurrentSession().createQuery(stringQuery,Posts.class);
			query.setParameter("title", "%"+text+"%");
			query.setParameter("content", "%"+text+"%");
			
			List<Posts> posts = query.getResultList();
			
			for(Posts tempPosts : posts) {
				Hibernate.initialize(tempPosts.getImages());
				Hibernate.initialize(tempPosts.getComment());
			}
			
			return posts;
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return null;
	}
	
}
