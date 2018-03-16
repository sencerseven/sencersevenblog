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
						<h2 class="color-title pull-left">${category.categoryName }</h2>
						<div class="bread-crumb pull-right">
							<ul id="crumbs" class="list-inline-block">
								<li class="mb"><a class=""
									href="${contextRoot }">Home</a></li>
								<li class="current">${category.categoryName }</li>
							</ul>
						</div>
					</div>
					<div class="post-box-listing margin-b20 border-bottom">
						<div class="row">
						
						<c:forEach items="${postsList}" var="postList">
							
							<div class="post-item">
								<div class="col-sm-6">
									<div class="post-thumb">
										<a
											href=""
											title=""><img width="900" height="600"
											src="${contextRoot }/resources/images/uploads/${postList.images[0].imageName}"
											class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
											alt=""
											/></a>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="post-info">
										<a
											href="../../2017/09/08/krypton-responsive-business-and-proin-dictum-elemntum-6/index.html"
											title=""> <b>${postList.title }</b>
										</a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>${postList.created_date}</span></li>
											<li><a
												href="../../2017/09/08/krypton-responsive-business-and-proin-dictum-elemntum-6/index.html#respond">
													<i class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
										<p class="excerpt">${postList.content}</p>
										<a
											href="${contextRoot}/post/${postList.postUrl}"
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
						<h2 class="color-title">Trending</h2>
						<div class="wrap-item" data-pagination="false"
							data-navigation="true" data-itemscustom="[[0,1]]">
							<div class="post-box">
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/diana-says-vlogging-saved-my-life-proin-dictum-loving-theme-sauten-congin-2/index.html"><img
											width="120" height="80"
											src="../../wp-content/uploads/2017/08/worldnews_fashion-10-120x80.jpg"
											class="attachment-120x80 size-120x80 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-270x180.jpg 270w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-370x247.jpg 370w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-510x340.jpg 510w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-670x447.jpg 670w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-392x262.jpg 392w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-200x133.jpg 200w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-440x293.jpg 440w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-170x113.jpg 170w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10.jpg 900w"
											sizes="(max-width: 120px) 100vw, 120px" /></a>
									</div>
									<div class="post-info">
										<div class="list-cat-btn">
											<ul>
												<li><a href="../fashion/index.html"
													class="s7upf_1520526388">Fashion</a></li>
											</ul>
										</div>
										<a
											href="../../2017/09/08/diana-says-vlogging-saved-my-life-proin-dictum-loving-theme-sauten-congin-2/index.html"><b>Diana
												says: Vlogging saved my life Proin dictum loving theme
												sauten congin</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a href="index.html#"> <i
													class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/porter-betrays-loyal-fliers-with-abrupt-cookie-switcheroo/index.html"><img
											width="120" height="80"
											src="../../wp-content/uploads/2017/08/worldnews_fashion-01-120x80.jpg"
											class="attachment-120x80 size-120x80 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-202x135.jpg 202w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-270x180.jpg 270w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-370x247.jpg 370w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-200x133.jpg 200w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-170x113.jpg 170w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01-392x262.jpg 392w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-01.jpg 900w"
											sizes="(max-width: 120px) 100vw, 120px" /></a>
									</div>
									<div class="post-info">
										<div class="list-cat-btn">
											<ul>
												<li><a href="../fashion/index.html"
													class="s7upf_1520526389">Fashion</a></li>
											</ul>
										</div>
										<a
											href="../../2017/09/08/porter-betrays-loyal-fliers-with-abrupt-cookie-switcheroo/index.html"><b>Porter
												Betrays Loyal Fliers With Abrupt Cookie Switcheroo</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a href="index.html#"> <i
													class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/milos-raonics-mom-gave-him-everything-with-one-ask-in-return/index.html"><img
											width="120" height="80"
											src="../../wp-content/uploads/2017/08/worldnews_fashion-07-120x80.jpg"
											class="attachment-120x80 size-120x80 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-202x135.jpg 202w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-270x180.jpg 270w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-370x247.jpg 370w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-200x133.jpg 200w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-170x113.jpg 170w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07-392x262.jpg 392w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-07.jpg 900w"
											sizes="(max-width: 120px) 100vw, 120px" /></a>
									</div>
									<div class="post-info">
										<div class="list-cat-btn">
											<ul>
												<li><a href="../fashion/index.html"
													class="s7upf_1520526390">Fashion</a></li>
											</ul>
										</div>
										<a
											href="../../2017/09/08/milos-raonics-mom-gave-him-everything-with-one-ask-in-return/index.html"><b>Milos
												Raonic&#8217;s Mom Gave Him Everything, With One Ask In
												Return</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a href="index.html#"> <i
													class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="post-box">
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-8/index.html"><img
											width="120" height="80"
											src="../../wp-content/uploads/2017/08/worldnews_fashion-10-120x80.jpg"
											class="attachment-120x80 size-120x80 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-270x180.jpg 270w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-370x247.jpg 370w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-510x340.jpg 510w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-670x447.jpg 670w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-392x262.jpg 392w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-200x133.jpg 200w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-440x293.jpg 440w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10-170x113.jpg 170w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-10.jpg 900w"
											sizes="(max-width: 120px) 100vw, 120px" /></a>
									</div>
									<div class="post-info">
										<div class="list-cat-btn">
											<ul>
												<li><a href="../fashion/index.html"
													class="s7upf_1520526391">Fashion</a></li>
											</ul>
										</div>
										<a
											href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-8/index.html"><b>Magalla
												Magazine &#8211; News and Business Blog by EA-Studio</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a href="index.html#"> <i
													class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-6/index.html"><img
											width="120" height="80"
											src="../../wp-content/uploads/2017/08/worldnews_fashion-11-120x80.jpg"
											class="attachment-120x80 size-120x80 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-11-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-11-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-11-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-11-202x135.jpg 202w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-11-270x180.jpg 270w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-11.jpg 900w"
											sizes="(max-width: 120px) 100vw, 120px" /></a>
									</div>
									<div class="post-info">
										<div class="list-cat-btn">
											<ul>
												<li><a href="../fashion/index.html"
													class="s7upf_1520526392">Fashion</a></li>
											</ul>
										</div>
										<a
											href="../../2017/09/08/magalla-magazine-news-and-business-blog-by-ea-studio-6/index.html"><b>Magalla
												Magazine &#8211; News and Business Blog by EA-Studio</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a href="index.html#"> <i
													class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
								<div class="post-item">
									<div class="post-thumb">
										<a
											href="../../2017/09/08/diana-says-vlogging-saved-my-life-proin-dictum-loving-theme-sauten-congin/index.html"><img
											width="120" height="80"
											src="../../wp-content/uploads/2017/08/worldnews_fashion-02-120x80.jpg"
											class="attachment-120x80 size-120x80 wp-post-image" alt=""
											srcset="http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-02-120x80.jpg 120w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-02-300x200.jpg 300w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-02-768x512.jpg 768w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-02-202x135.jpg 202w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-02-270x180.jpg 270w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-02-392x262.jpg 392w, http://7uptheme.com/wordpress/worldnews/wp-content/uploads/2017/08/worldnews_fashion-02.jpg 900w"
											sizes="(max-width: 120px) 100vw, 120px" /></a>
									</div>
									<div class="post-info">
										<div class="list-cat-btn">
											<ul>
												<li><a href="../fashion/index.html"
													class="s7upf_1520526393">Fashion</a></li>
											</ul>
										</div>
										<a
											href="../../2017/09/08/diana-says-vlogging-saved-my-life-proin-dictum-loving-theme-sauten-congin/index.html"><b>Diana
												says: Vlogging saved my life Proin dictum loving theme
												sauten congin</b></a>
										<ul class="post-list-info">
											<li><i class="ion-android-calendar"></i> <span>08
													Sep 2017</span></li>
											<li><a href="index.html#"> <i
													class="ion-chatbox-working"></i> <span>0</span>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
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