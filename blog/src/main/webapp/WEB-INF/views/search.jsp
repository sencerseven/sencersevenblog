<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--header Close-->
<div id="main-content" class="main-wrapper">
	<div id="tp-blog-page" class="tp-blog-page">
		<!-- blog-page -->
		<div class="container">
			<div class="row">
				<div class="listing-content col-md-8">
					<div class="listing-title color-border-top">
						<h2 class="color-title pull-left">Arama - ${param.text}</h2>
						<div class="bread-crumb pull-right">
							<ul id="crumbs" class="list-inline-block">
								<li class="mb"><a class="" href="${contextRoot }">Home</a></li>

							</ul>
						</div>
					</div>
					<div class="post-box-listing margin-b20 border-bottom">
						<div class="row">

							<c:forEach items="${postsList}" var="postList">

								<div class="post-item">
									<div class="col-sm-6">
										<div class="post-thumb">
											<a href="${contextRoot}/post/${postList.postUrl }" title=""><img width="900" height="600"
												src="${contextRoot }/resources/images/uploads/${postList.images[0].imageName}"
												class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
												alt="" /></a>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="post-info">
											<a
												href="${contextRoot}/post/${postList.postUrl }"
												title=""> <b>${postList.title }</b>
											</a>
											<ul class="post-list-info">
												<li><i class="ion-android-calendar"></i> <span>${postList.dateString}</span></li>
												<li><a
													href="../../2017/09/08/krypton-responsive-business-and-proin-dictum-elemntum-6/index.html#respond">
														<i class="ion-chatbox-working"></i> <span>${fn:length(postList.comment) }</span>
												</a></li>
											</ul>
											<p class="excerpt">${postList.content}</p>
											<a href="${contextRoot}/post/${postList.postUrl}"
												class="read-more" title="">Devamını Oku..</a>
										</div>
									</div>
								</div>


							</c:forEach>

						</div>
					</div>
				</div>
				<div class="col-md-4  col-sm-12 sidebar">
					<div
						class="trending home-title color-border-top ion-small margin-b30 drop-shadow">
						<h2 class="color-title">Trendler</h2>
						<div class="wrap-item" data-pagination="false"
							data-navigation="true" data-itemscustom="[[0,1]]">
							<div class="post-box">
								<c:forEach items="${populerPostsList}" var="populerPosts">
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="${contextRoot}/post/${populerPosts.postUrl }"><img
											width="120" height="80"
											src="${contextRoot }/resources/images/uploads/${populerPosts.images[0].imageName}"
											class="attachment-120x80 size-120x80 wp-post-image" alt=""
											 /></a>
									</div>
									<div class="post-info">
										<a
											href="../../2017/09/08/diana-says-vlogging-saved-my-life-proin-dictum-loving-theme-sauten-congin-2/index.html"><b> ${populerPosts.title }</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>${populerPosts.dateString }</span></li>
											<li><a href="index.html#"> <i
													class="ion-chatbox-working"></i> <span>${fn:length(populerPosts.comment)}</span>
											</a></li>
										</ul>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<!-- RECENT POST -->
					<!-- 
					<div
						class="cat-home3 home-title listing-cat color-border-top margin-b30">
						<h2 class="color-title">Recent Posts</h2>
						<div class="post-box">
							<div class="post-item white">
								<div class="post-thumb">
									<div class="list-cat-btn">
										<ul class="post-categories">
											<li><a href="../business/index.html"
												class="s7upf_1520526394">Business</a></li>
										</ul>
									</div>
									<div class="type-icon">
										<i class="ion-ios-videocam"></i>
									</div>
									<a
										href="../../2017/09/08/eminem-comes-out-of-woodwork-to-raise-millions-for-manchester/index.html"><img
										width="900" height="600"
										src="../../wp-content/uploads/2017/08/worldnews_business-05.jpg"
										class="attachment-full size-full wp-post-image" alt=""
										srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05.jpg 900w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-440x293.jpg 440w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-392x262.jpg 392w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-370x247.jpg 370w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-510x340.jpg 510w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-670x447.jpg 670w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-200x133.jpg 200w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-770x513.jpg 770w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-05-270x180.jpg 270w"
										sizes="(max-width: 900px) 100vw, 900px" /></a>
								</div>
								<div class="post-info">
									<a
										href="../../2017/09/08/eminem-comes-out-of-woodwork-to-raise-millions-for-manchester/index.html"><b>Eminem
											Comes Out Of Woodwork To Raise Millions For Manchester</b></a>
									<ul class="post-list-info">
										<li><i class="ion-android-calendar"></i> <span>08
												Sep 2017</span></li>
										<li><a
											href="../../2017/09/08/eminem-comes-out-of-woodwork-to-raise-millions-for-manchester/index.html#respond">
												<i class="ion-chatbox-working"></i> <span>0</span>
										</a></li>
									</ul>
									<p>Everyone is looking to</p>
								</div>
							</div>
							<div class="square">
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-9/index.html"><img
											width="50" height="50"
											src="../../wp-content/uploads/2017/08/worldnews_business-03-50x50.jpg"
											class="attachment-50x50 size-50x50 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-50x50.jpg 50w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-150x150.jpg 150w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-266x266.jpg 266w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-03-600x600.jpg 600w"
											sizes="(max-width: 50px) 100vw, 50px" /></a>
									</div>
									<div class="post-info">
										<a
											href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-9/index.html"><b>Magalla
												Magazine &#8211; News and Business Blog by EA-Studio</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a
												href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-9/index.html#respond">
													<i class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/krypton-responsive-business-and-proin-dictum-elemntum-5/index.html"><img
											width="50" height="50"
											src="../../wp-content/uploads/2017/08/worldnews_business-07-50x50.jpg"
											class="attachment-50x50 size-50x50 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-07-50x50.jpg 50w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-07-150x150.jpg 150w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-07-266x266.jpg 266w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_business-07-600x600.jpg 600w"
											sizes="(max-width: 50px) 100vw, 50px" /></a>
									</div>
									<div class="post-info">
										<a
											href="../../2017/09/08/krypton-responsive-business-and-proin-dictum-elemntum-5/index.html"><b>Krypton:
												Responsive Business and Proin dictum elemntum</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a
												href="../../2017/09/08/krypton-responsive-business-and-proin-dictum-elemntum-5/index.html#respond">
													<i class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-5/index.html"><img
											width="50" height="50"
											src="../../wp-content/uploads/2017/09/worldnews_slide-01-50x50.jpg"
											class="attachment-50x50 size-50x50 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/09/worldnews_slide-01-50x50.jpg 50w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/09/worldnews_slide-01-150x150.jpg 150w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/09/worldnews_slide-01-266x266.jpg 266w"
											sizes="(max-width: 50px) 100vw, 50px" /></a>
									</div>
									<div class="post-info">
										<a
											href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-5/index.html"><b>Magalla
												Magazine &#8211; News and Business Blog by EA-Studio</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a
												href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-5/index.html#respond">
													<i class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/01/as-american-oil-booms-anew-saudi-chief-promises-whatever-it-takes-to-rebalance-market/index.html"><img
											width="50" height="50"
											src="../../wp-content/uploads/2017/09/worldnews_slide-01-50x50.jpg"
											class="attachment-50x50 size-50x50 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/09/worldnews_slide-01-50x50.jpg 50w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/09/worldnews_slide-01-150x150.jpg 150w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/09/worldnews_slide-01-266x266.jpg 266w"
											sizes="(max-width: 50px) 100vw, 50px" /></a>
									</div>
									<div class="post-info">
										<a
											href="../../2017/09/01/as-american-oil-booms-anew-saudi-chief-promises-whatever-it-takes-to-rebalance-market/index.html"><b>As
												American Oil Booms Anew, Saudi Chief Promises
												&#8216;Whatever It Takes&#8217; To Rebalance Market</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>01
													Sep 2017</span></li>
											<li><a
												href="../../2017/09/01/as-american-oil-booms-anew-saudi-chief-promises-whatever-it-takes-to-rebalance-market/index.html#respond">
													<i class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					 -->
					<div class="ads-style1 drop-shadow margin-b30">
						<a href="index.html#">
							<figure class="effect-bubba">
								<img src="../../wp-content/uploads/2017/08/ads2-bg.jpg" alt="">
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