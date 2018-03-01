<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<div class="content col-md-9">

						<div id="blog" class="single-post">

							<div class="post-item">
								<div class="post-item-wrap">
									<div class="carousel dots-inside arrows-visible" data-items="1"
										data-lightbox="gallery">
										<a href="images/blog/16.jpg" data-lightbox="gallery-item">
											<img alt="image" src="images/blog/16.jpg">
										</a> <a href="images/blog/11.jpg" data-lightbox="gallery-item">
											<img alt="image" src="images/blog/11.jpg">
										</a>
									</div>
									<div class="post-item-description">
										<h2>${getLastPosts.title }</h2>
										<div class="post-meta">
											<span class="post-meta-date"><i
												class="fa fa-calendar-o"></i>${getLastPosts.created_date}</span> <span
												class="post-meta-comments"><a href=""><i
													class="fa fa-comments-o"></i>33 Comments</a></span> <span
												class="post-meta-category"><a href=""><i
													class="fa fa-tag"></i>Lifestyle, Magazine</a></span>
											<div class="post-meta-share">
												<a class="btn btn-xs btn-slide btn-facebook" href="#"> <i
													class="fa fa-facebook"></i> <span>Facebook</span>
												</a> <a class="btn btn-xs btn-slide btn-twitter" href="#"
													data-width="100"> <i class="fa fa-twitter"></i> <span>Twitter</span>
												</a> <a class="btn btn-xs btn-slide btn-instagram" href="#"
													data-width="118"> <i class="fa fa-instagram"></i> <span>Instagram</span>
												</a> <a class="btn btn-xs btn-slide btn-googleplus"
													href="../cdn-cgi/l/email-protection.html#95b6"
													data-width="80"> <i class="fa fa-envelope"></i> <span>Mail</span>
												</a>
											</div>
										</div>
										${getLastPosts.content}
									</div>
									<div class="post-tags">
										<a href="#">Life</a> <a href="#">Sport</a> <a href="#">Tech</a>
										<a href="#">Travel</a>
									</div>
									<div class="post-navigation">
										<a href="blog-single.html" class="post-prev">
											<div class="post-prev-title">
												<span>Previous Post</span>Standard post with a single image
											</div>
										</a> <a href="blog-masonry-3.html" class="post-all"> <i
											class="fa fa-th"></i>
										</a> <a href="blog-single-video.html" class="post-next">
											<div class="post-next-title">
												<span>Next Post</span>Post with YouTube Video
											</div>
										</a>
									</div>

									<div class="comments" id="comments">
										<div class="comment_number">
											Comments <span>${fn:length(getLastPostsComment)}</span>
										</div>
										<div class="comment-list">
											
											<c:forEach items="${getLastPostsComment}" var="lastPostComment">
												<div class="comment" id="comment-1">
													<div class="image">
														<img alt="" src="images/blog/author.jpg" class="avatar">
													</div>
													<div class="text">
														<h5 class="name">John Doe</h5>
														<span class="comment_date">Posted at 15:32h, 06
															December</span> <a class="comment-reply-link" href="#">Reply</a>
														<div class="text_holder">
															${lastPostComment.comment}
														</div>
													</div>
												</div>
											</c:forEach>
											

										</div>
									</div>

									<div class="respond-form" id="respond">
										<div class="respond-comment">
											Leave a <span>Comment</span>
										</div>
										<form class="form-gray-fields">
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label class="upper" for="name">Name</label> <input
															class="form-control required" name="senderName"
															placeholder="Enter name" id="name" aria-required="true"
															type="text">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="upper" for="email">Email</label> <input
															class="form-control required email" name="senderEmail"
															placeholder="Enter email" id="email" aria-required="true"
															type="email">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label class="upper" for="website">Website</label> <input
															class="form-control website" name="senderWebsite"
															placeholder="Enter Website" id="website"
															aria-required="false" type="text">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label class="upper" for="comment">Your comment</label>
														<textarea class="form-control required" name="comment"
															rows="9" placeholder="Enter comment" id="comment"
															aria-required="true"></textarea>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<div class="form-group text-center">
														<button class="btn" type="submit">Submit Comment</button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>

						</div>
					</div>