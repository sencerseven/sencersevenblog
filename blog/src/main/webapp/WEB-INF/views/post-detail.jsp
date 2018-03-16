<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
.s7upf_1520526403{
	background-color:red;
}
</style>


<c:if test="${not empty post}">
	<div id="main-content" class="main-wrapper">
		<div id="tp-blog-page" class="tp-blog-page">
			<!-- blog-single -->
			<div class="container">
				<div class="row">
					<div class="left-side col-md-8">
						<div class="post-content ">

							<div class="post-thumbnail margin-b20">
								<img width="900" height="600"
									src="${contextRoot}/resources/images/uploads/${post.images[0].imageName}"
									class="blog-image wp-post-image" alt=""
									sizes="(max-width: 900px) 100vw, 900px" />
							</div>
							<div class="main-post-content margin-b30">
								<div class="post-item border-bottom">
									<div class="post-info">
										<h1 class="title18 margin-b20">${post.title}&#8211; News
											and Business Blog</h1>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>${post.created_date}</span></li>
											<li><a href="index.html#comments"> <i
													class="ion-chatbox-working"></i> <span>1</span>
											</a></li>
											<li><i class="ion-ios-eye"></i> <span>${post.view}</span></li>
										</ul>
									</div>
								</div>
								<div class="post-detail margin-b30">${post.content}</div>
							</div>
						</div>
						<div class="single-share border-bottom">
							<!-- <a href="#" class="hvr-bob" target="blank">
                    <i class="fa fa-share-alt"></i>
                    <span></span> 
                </a> -->
							<a
								href="http://www.facebook.com/sharer.php?u=http://7uptheme.com/wordpress/worldnews/2017/08/09/magalla-magazine-news-and-business-blog-4/"
								class="hvr-bob" target="blank"> <i class="fa fa-facebook"></i>
								<span></span>
							</a> <a
								href="http://twitter.com/share?url=http://7uptheme.com/wordpress/worldnews/2017/08/09/magalla-magazine-news-and-business-blog-4/"
								class="hvr-bob" target="blank"> <i class="fa fa-twitter"></i>
								<span></span>
							</a> <a
								href="https://plus.google.com/share?url=http://7uptheme.com/wordpress/worldnews/2017/08/09/magalla-magazine-news-and-business-blog-4/"
								class="hvr-bob" target="blank"> <i class="fa fa-google"></i>
								<span></span>
							</a> <a
								href="mailto:?body=http://7uptheme.com/wordpress/worldnews/2017/08/09/magalla-magazine-news-and-business-blog-4/"
								class="hvr-bob"> <i class="fa fa-envelope-o"></i> <span></span>
							</a> <a
								href="http://www.pinterest.com/pin/create/button/?url=http://7uptheme.com/wordpress/worldnews/2017/08/09/magalla-magazine-news-and-business-blog-4/"
								class="hvr-bob" target="blank"> <i class="fa fa-pinterest"></i>
								<span></span>
							</a> <a
								href="http://www.linkedin.com/shareArticle?mini=true&url=http://7uptheme.com/wordpress/worldnews/2017/08/09/magalla-magazine-news-and-business-blog-4/"
								class="hvr-bob" target="blank"> <i class="fa fa-linkedin"></i>
								<span></span>
							</a> <a
								href="https://www.tumblr.com/share?v=3&u=http://7uptheme.com/wordpress/worldnews/2017/08/09/magalla-magazine-news-and-business-blog-4/"
								class="hvr-bob" target="blank"> <i class="fa fa-tumblr"></i>
								<span></span>
							</a>
						</div>
						<div class="post-meta">
							<div class="article-avatar">
								<a href="../../../../author/7uptheme/index.html"
									class="hvr-rotate"><img alt=''
									src='http://0.gravatar.com/avatar/327a23545f81f97b0677092a0e570040?s=100&d=mm&r=g'
									srcset='http://0.gravatar.com/avatar/327a23545f81f97b0677092a0e570040?s=200&amp;d=mm&amp;r=g 2x'
									class='avatar avatar-100 photo' height='100' width='100' /></a>
							</div>
							<div class="article-info">
								<p>Written By</p>
								<div class="social-article">
									<h3>
										<a href="../../../../author/7uptheme/index.html">${post.user.firstName }
											${post.user.lastName }</a>
									</h3>
									<ul class="list-inline-block">
										<li><a class="dark" href="index.html#"><i
												class="fa fa-facebook"></i></a></li>
										<li><a class="dark" href="index.html#"><i
												class="fa fa-twitter"></i></a></li>
										<li><a class="dark" href="index.html#"><i
												class="fa fa-pinterest"></i></a></li>
									</ul>
								</div>
								<p>${post.user.role}</p>
							</div>
						</div>
						<div class="control-text margin-b30 border-bottom border-top">
							<div class="row">
								<div class="col-xs-6">
									<div class="text-left">
										<i class="ion-chevron-left"></i>
										<h3>
											<a
												href="../diana-says-vlogging-saved-my-life-proin-dictum-2/index.html"
												rel="prev">Diana says: Vlogging saved my life Proin
												dictum</a>
										</h3>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="text-right">
										<h3>
											<a
												href="../../10/why-its-the-year-to-wear-what-you-like-not/index.html"
												rel="next">Why it&#8217;s the year to wear what you like
												not</a>
										</h3>
										<i class="ion-chevron-right"></i>
									</div>
								</div>
							</div>
						</div>
						<div class="also-like color-color-border-top margin-b20">
							<div>
								<h2 class="color-title margin-b20">You may also like</h2>
							</div>
							<div class="post-box-listing">
								<div class="grid-blog row">
									<div class="post-item col-sm-6">
										<div class="post-thumb">
											<div class="list-cat-btn">
												<ul class="post-categories">
													<li><a href="../../../../category/business/index.html"
														class="s7upf_1520526418">Business</a></li>
												</ul>
											</div>
											<div class="type-icon">
												<i class="ion-ios-videocam"></i>
											</div>
											<a
												href="../../../09/08/eminem-comes-out-of-woodwork-to-raise-millions-for-manchester/index.html"><img
												width="900" height="600"
												src="../../../../wp-content/uploads/2017/08/worldnews_business-05.jpg"
												class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
												alt=""
												srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05.jpg 900w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-440x293.jpg 440w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-392x262.jpg 392w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-370x247.jpg 370w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-510x340.jpg 510w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-670x447.jpg 670w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-200x133.jpg 200w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-770x513.jpg 770w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-270x180.jpg 270w"
												sizes="(max-width: 900px) 100vw, 900px" /></a>
										</div>
										<div class="post-info">
											<a
												href="../../../09/08/eminem-comes-out-of-woodwork-to-raise-millions-for-manchester/index.html"><b>Eminem
													Comes Out Of Woodwork To Raise Millions For Manchester</b></a>
											<ul class="post-list-info">
												<li><i class="ion-android-calendar"></i> <span>08
														Sep 2017</span></li>
												<li><a
													href="../../../09/08/eminem-comes-out-of-woodwork-to-raise-millions-for-manchester/index.html#respond">
														<i class="ion-chatbox-working"></i> <span>0</span>
												</a></li>
											</ul>
											<p>Everyone is looking to lose weight</p>
											<a
												href="../../../09/08/eminem-comes-out-of-woodwork-to-raise-millions-for-manchester/index.html"
												class="read-more">Read more</a>
										</div>
									</div>
									<div class="post-item col-sm-6">
										<div class="post-thumb">
											<div class="list-cat-btn">
												<ul class="post-categories">
													<li><a href="../../../../category/business/index.html"
														class="s7upf_1520526419">Business</a></li>
												</ul>
											</div>
											<div class="type-icon">
												<i class="ion-ios-videocam"></i>
											</div>
											<a
												href="../../../09/08/magalla-magazine-news-and-business-blog-by-ea-studio-9/index.html"><img
												width="900" height="600"
												src="../../../../wp-content/uploads/2017/08/worldnews_business-03.jpg"
												class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
												alt=""
												srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03.jpg 900w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-510x340.jpg 510w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-570x380.jpg 570w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-370x247.jpg 370w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-392x262.jpg 392w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-200x133.jpg 200w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-770x513.jpg 770w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-270x180.jpg 270w"
												sizes="(max-width: 900px) 100vw, 900px" /></a>
										</div>
										<div class="post-info">
											<a
												href="../../../09/08/magalla-magazine-news-and-business-blog-by-ea-studio-9/index.html"><b>Magalla
													Magazine</b></a>
											<ul class="post-list-info">
												<li><i class="ion-android-calendar"></i> <span>08
														Sep 2017</span></li>
												<li><a
													href="../../../09/08/magalla-magazine-news-and-business-blog-by-ea-studio-9/index.html#respond">
														<i class="ion-chatbox-working"></i> <span>0</span>
												</a></li>
											</ul>
											<p>Everyone is looking to lose weight</p>
											<a
												href="../../../09/08/magalla-magazine-news-and-business-blog-by-ea-studio-9/index.html"
												class="read-more">Read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="comment" class="comments-area comments">

							<div class="post-comment">
								<h2 class="title18">
									One thought on &ldquo;<span>Magalla Magazine &#8211;
										News and Business Blog</span>&rdquo;
								</h2>
								<ol class="comments-list">
									<li
										class="comment byuser comment-author-7uptheme bypostauthor even thread-even depth-1">
										<div id="comment-3" class="comment-body">
											<div class="item-comment">
												<div class="author-avatar">
													<a href="../../../../author/7uptheme/index.html"><img
														alt=''
														src='http://0.gravatar.com/avatar/327a23545f81f97b0677092a0e570040?s=100&d=mm&r=g'
														srcset='http://0.gravatar.com/avatar/327a23545f81f97b0677092a0e570040?s=200&amp;d=mm&amp;r=g 2x'
														class='avatar avatar-100 photo' height='100' width='100' /></a>
												</div>
												<div class="comment-info">
													<h3>
														<b>7uptheme</b>
													</h3>
													<div class="desc">
														<p>Your comment *Typi non habent claritatem insitam;
															est usus legentis in iis qui facit eorum claritatem.
															Investigationes monstraverunt lectores legere me lius
															quod ii legunt saepius</p>
													</div>
													<span><i class="ion-android-calendar"></i>09 Aug
														2017</span> <span><a rel='nofollow'
														class='comment-reply-link'
														href='index-replytocom=3.html#respond'
														onclick='return addComment.moveForm( "comment-3", "3", "respond", "112" )'
														aria-label='Reply to 7uptheme'>Reply</a></span>
												</div>
											</div>
										</div>
									</li>
									<!-- #comment-## -->
								</ol>

							</div>

							<!-- If comments are closed and there are comments, let's leave a little note, shall we? -->
						</div>
						<div id="respond" class="comment-respond">
							<h2 class="title18">
								Leave a reply <small><a rel="nofollow"
									id="cancel-comment-reply-link" href="index.html#respond"
									style="display: none;">Cancel reply</a></small>
							</h2>
							<form
								action="http://7uptheme.com/wordpress/worldnews/wp-comments-post.php"
								method="post" id="commentform"
								class="form-leave-comment form-contact" novalidate>


								<p>Your email address will not be published. Required fields
									are marked *</p>
								<input id="author" name="author" type="text"
									placeholder="Name *" value="" aria-required="true" /><input
									id="email" name="email" type="text" placeholder="Email *"
									value="" aria-required="true" />
								<textarea class="form-control" rows="5" name="comment"
									aria-required="true" placeholder="Your comment *"></textarea>
								<p class="form-submit">
									<input name="submit" type="submit" id="submit"
										class="shop-button" value="Post a comment" /> <input
										type='hidden' name='comment_post_ID' value='112'
										id='comment_post_ID' /> <input type='hidden'
										name='comment_parent' id='comment_parent' value='0' />
								</p>
							</form>
						</div>
						<!-- #respond -->
					</div>
					<div class="col-md-4  col-sm-12 sidebar">
						<div
							class="trending home-title color-border-top ion-small margin-b30 drop-shadow">
							<h2 class="color-title">Trendler</h2>
							<div class="wrap-item" data-pagination="false"
								data-navigation="true" data-itemscustom="[[0,1]]">
								<div class="post-box">
									<c:forEach items="${categoryTrendPost}" var="trendPost">
										<div class="post-item">
											<div class="post-thumb">
												<a
													href="${contextRoot }/post/${trendPost.postUrl}"><img
													width="120" height="80"
													src="${contextRoot}/resources/images/uploads/${trendPost.images[0].imageName}"
													class="attachment-120x80 size-120x80 wp-post-image" alt=""
													sizes="(max-width: 120px) 100vw, 120px" /></a>
											</div>
											<div class="post-info">
												<div class="list-cat-btn">
													<ul>
														<li><a href="${contextRoot}/category/${trendPost.category.categoryUrl }" class="s7upf_1520526403">${trendPost.category.categoryName }</a></li>
													</ul>
												</div>
												<a
													href="${contextRoot }/post/${trendPost.postUrl}"><b>${trendPost.title }</b></a>
												<ul class="post-list-info">
													<li><i class="ion-android-calendar"></i> <span>${trendPost.created_date}</span></li>
													<li><a href="index.html#"> <i
															class="ion-chatbox-working"></i> <span>0</span>
													</a></li>
													<li><i class="ion-ios-eye"></i> <span>${trendPost.view}</span></li>
												</ul>
											</div>
										</div>
									</c:forEach>
								</div>
								<div class="post-box">
									<c:forEach items="${categoryTrendPost}" var="trendPost">
										<div class="post-item">
											<div class="post-thumb">
												<a
													href="${contextRoot }/post/${trendPost.postUrl}"><img
													width="120" height="80"
													src="${contextRoot}/resources/images/uploads/${trendPost.images[0].imageName}"
													class="attachment-120x80 size-120x80 wp-post-image" alt=""
													sizes="(max-width: 120px) 100vw, 120px" /></a>
											</div>
											<div class="post-info">
												<div class="list-cat-btn">
													<ul>
														<li><a href="${contextRoot}/category/${trendPost.category.categoryUrl }" class="s7upf_1520526403">${trendPost.category.categoryName }</a></li>
													</ul>
												</div>
												<a
													href="${contextRoot }/post/${trendPost.postUrl}"><b>${trendPost.title }</b></a>
												<ul class="post-list-info">
													<li><i class="ion-android-calendar"></i> <span>${trendPost.created_date}</span></li>
													<li><a href="index.html#"> <i
															class="ion-chatbox-working"></i> <span>0</span>
													</a></li>
													<li><i class="ion-ios-eye"></i> <span>${trendPost.view}</span></li>
												</ul>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<div
							class="cat-home3 home-title listing-cat color-border-top margin-b30">
							<h2 class="color-title">En Son Yazdıkları</h2>
							<div class="post-box">
								<c:if test="${not empty getRecentPost[0]}">

									<div class="post-item white">
										<div class="post-thumb">
											<div class="list-cat-btn">
												<ul class="post-categories">
													<li><a href="../../../../category/business/index.html"
														class="s7upf_1520526426">Business</a></li>
												</ul>
											</div>
											<div class="type-icon">
												<i class="ion-ios-videocam"></i>
											</div>
											<a
												href="${contextRoot }/post/${getRecentPost[0].postUrl}"><img
												width="900" height="600"
												src="${contextRoot }/resources/images/uploads/${getRecentPost[0].images[0].imageName}"
												class="attachment-full size-full wp-post-image" alt=""
												 /></a>
										</div>
										<div class="post-info">
											<a
												href="${contextRoot }/post/${getRecentPost[0].postUrl}"><b>${getRecentPost[0].title }</b></a>
											<ul class="post-list-info">
												<li><i class="ion-android-calendar"></i> <span>${getRecentPost[0].created_date }</span></li>
												<li><a
													href="../../../09/08/eminem-comes-out-of-woodwork-to-raise-millions-for-manchester/index.html#respond">
														<i class="ion-chatbox-working"></i> <span>0</span>
												</a></li>
											</ul>
											<p>Everyone is looking to</p>
										</div>
									</div>

								</c:if>
								<c:if test="${ not empty getRecentPost[1]}">
									<c:forEach items="${getRecentPost}" var="recentPost"
										varStatus="index">
										<c:if test="${index.index != 0 }">
											<div class="square">

												<div class="post-item">
													<div class="post-thumb">
														<a
															href="${contextRoot }/post/${recentPost.postUrl}"><img
															width="50" height="50"
															src="${contextRoot}/resources/images/uploads/${recentPost.images[0].imageName }"
															class="attachment-50x50 size-50x50 wp-post-image" alt=""
															/></a>
													</div>
													<div class="post-info">
														<a
															href="${contextRoot }/post/${recentPost.postUrl}"><b>${recentPost.title }</b></a>
														<ul class="post-list-info">
															<li><i class="ion-android-calendar"></i> <span>08
																	Sep 2017</span></li>
															<li><a
																href="../../../09/08/magalla-magazine-news-and-business-blog-by-ea-studio-9/index.html#respond">
																	<i class="ion-chatbox-working"></i> <span>0</span>
															</a></li>
														</ul>
													</div>
												</div>

											</div>
										</c:if>

									</c:forEach>
								</c:if>
							</div>
						</div>
						<div class="ads-style1 drop-shadow margin-b30">
							<a href="index.html#">
								<figure class="effect-bubba">
									<img src="../../../../wp-content/uploads/2017/08/ads2-bg.jpg"
										alt="">
									<figcaption>
										<p class="learn-more">Learn more</p>
									</figcaption>
								</figure>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:if>