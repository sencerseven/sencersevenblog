<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="image" value="/resources/images"></spring:url>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="INSPIRO" />
<meta name="description" content="Themeforest Template Polo">
<title>POLO | The Multi-Purpose HTML5 Template</title>
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,800,700,600%7CMontserrat:400,500,600,700%7CRaleway:100,300,600,700,800"
	rel="stylesheet" type="text/css" />
<link href="${css}/plugins.css" rel="stylesheet">
<link href="${css}/style.css" rel="stylesheet">
<link href="${css}/responsive.css" rel="stylesheet">
</head>
<body>

	<div id="wrapper">

		<header id="header">
			<div id="header-wrap">
				<div class="container">
					<div id="logo">
						<a href="index.html" class="logo"
							data-dark-logo="images/logo-dark.png"> <img
							src="images/logo.png" alt="Polo Logo">
						</a>
					</div>


					<div id="top-search">
						<form action="search-results-page.html" method="get">
							<input type="text" name="q" class="form-control" value=""
								placeholder="Start typing & press  &quot;Enter&quot;">
						</form>
					</div>


					<div class="header-extras">
						<ul>
							<li><a id="top-search-trigger" href="#" class="toggle-item">
									<i class="fa fa-search"></i> <i class="fa fa-close"></i>
							</a></li>
							<li class="hidden-xs">

								

							</li>
						</ul>
					</div>


					<div id="mainMenu-trigger">
						<button class="lines-button x">
							<span class="lines"></span>
						</button>
					</div>


					<div id="mainMenu">
						<div class="container">
							<!-- NAVBAR -->
							<%@include file="./shared/navbar.jsp" %>
						</div>
					</div>

				</div>
			</div>
		</header>


		<section id="page-content" class="sidebar-right">
			<div class="container">
				<div class="row">

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
										<h2>Lighthouse, standard post with a single image</h2>
										<div class="post-meta">
											<span class="post-meta-date"><i
												class="fa fa-calendar-o"></i>Jan 21, 2017</span> <span
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
										<p>Curabitur pulvinar euismod ante, ac sagittis ante
											posuere ac. Vivamus luctus commodo dolor porta feugiat. Fusce
											at velit id ligula pharetra laoreet. Ut nec metus a mi
											ullamcorper hendrerit. Nulla facilisi. Pellentesque sed nibh
											a quam accumsan dignissim quis quis urna. Lorem ipsum dolor
											sit amet, consectetur adipiscing elit. Praesent id dolor dui,
											dapibus gravida elit. Donec consequat laoreet sagittis.
											Suspendisse ultricies ultrices viverra. Morbi rhoncus laoreet
											tincidunt. Mauris interdum convallis metus.M</p>
										<blockquote>
											<p>The world is a dangerous place to live; not because of
												the people who are evil, but because of the people who don't
												do anything about it.</p>
											<small>by <cite>Albert Einstein</cite></small>
										</blockquote>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Praesent id dolor dui, dapibus gravida elit. Donec
											consequat laoreet sagittis. Suspendisse ultricies ultrices
											viverra. Morbi rhoncus laoreet tincidunt. Mauris interdum
											convallis metus. Suspendisse vel lacus est, sit amet
											tincidunt erat. Etiam purus sem, euismod eu vulputate eget,
											porta quis sapien. Donec tellus est, rhoncus vel scelerisque
											id, iaculis eu nibh.</p>
										<p>Donec posuere bibendum metus. Quisque gravida luctus
											volutpat. Mauris interdum, lectus in dapibus molestie, quam
											felis sollicitudin mauris, sit amet tempus velit lectus nec
											lorem. Nullam vel mollis neque. Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. Nullam vel enim dui. Cum sociis
											natoque penatibus et magnis dis parturient montes, nascetur
											ridiculus mus. Sed tincidunt accumsan massa id viverra. Sed
											sagittis, nisl sit amet imperdiet convallis, nunc tortor
											consequat tellus, vel molestie neque nulla non ligula. Proin
											tincidunt tellus ac porta volutpat. Cras mattis congue lacus
											id bibendum. Mauris ut sodales libero. Maecenas feugiat sit
											amet enim in accumsan.</p>
										<p>Duis vestibulum quis quam vel accumsan. Nunc a
											vulputate lectus. Vestibulum eleifend nisl sed massa sagittis
											vestibulum. Vestibulum pretium blandit tellus, sodales
											volutpat sapien varius vel. Phasellus tristique cursus erat,
											a placerat tellus laoreet eget. Fusce vitae dui sit amet
											lacus rutrum convallis. Vivamus sit amet lectus venenatis est
											rhoncus interdum a vitae velit.</p>
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
											Comments <span>(2)</span>
										</div>
										<div class="comment-list">

											<div class="comment" id="comment-1">
												<div class="image">
													<img alt="" src="images/blog/author.jpg" class="avatar">
												</div>
												<div class="text">
													<h5 class="name">John Doe</h5>
													<span class="comment_date">Posted at 15:32h, 06
														December</span> <a class="comment-reply-link" href="#">Reply</a>
													<div class="text_holder">
														<p>Lorem Ipsum is simply dummy text of the printing
															and typesetting industry. Lorem Ipsum has been the
															industry's standard dummy text ever since the 1500s, when
															an unknown printer took a galley of type and scrambled it
															to make a type specimen book. It has survived not only
															five centuries, but also the leap into electronic
															typesetting, remaining essentially unchanged. It was
															popularised in the 1960s with the release of Letraset
															sheets containing Lorem Ipsum passages, and more recently
															with desktop publishing software like Aldus PageMaker
															including versions of Lorem Ipsum.</p>
													</div>
												</div>

												<div class="comment" id="comment-1-1">
													<div class="image">
														<img alt="" src="images/blog/author2.jpg" class="avatar">
													</div>
													<div class="text">
														<h5 class="name">John Doe</h5>
														<span class="comment_date">Posted at 15:32h, 06
															December</span> <a class="comment-reply-link" href="#">Reply</a>
														<div class="text_holder">
															<p>It is a long established fact that a reader will
																be distracted by the readable content of a page when
																looking at its layout. The point of using Lorem Ipsum is
																that it has a more-or-less normal</p>
														</div>
													</div>
												</div>


												<div class="comment" id="comment-1-2">
													<div class="image">
														<img alt="" src="images/blog/author3.jpg" class="avatar">
													</div>
													<div class="text">
														<h5 class="name">John Doe</h5>
														<span class="comment_date">Posted at 15:32h, 06
															December</span> <a class="comment-reply-link" href="#">Reply</a>
														<div class="text_holder">
															<p>There are many variations of passages of Lorem
																Ipsum available, but the majority have suffered
																alteration in some form, by injected humour, or
																randomised words which don't look even slightly
																believable. If you are going to use a passage of Lorem
																Ipsum, you need to be sure there isn't anything
																embarrassing hidden in the middle of text.</p>
														</div>
													</div>
												</div>

											</div>


											<div class="comment" id="comment-2">
												<div class="image">
													<img alt="" src="images/blog/author2.jpg" class="avatar">
												</div>
												<div class="text">
													<h5 class="name">John Doe</h5>
													<span class="comment_date">Posted at 15:32h, 06
														December</span> <a class="comment-reply-link" href="#">Reply</a>
													<div class="text_holder">
														<p>The standard chunk of Lorem Ipsum used since the
															1500s is reproduced below for those interested. Sections
															1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum"
															by Cicero are also reproduced in their exact original
															form, accompanied by English versions from the 1914
															translation by H. Rackham.</p>
													</div>
												</div>
											</div>

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


					<div class="sidebar col-md-3">
						<%@include file="./shared/sidebar.jsp" %>
					</div>

				</div>
			</div>
		</section>


		<footer id="footer" class="footer-light">
			<%@include file="./shared/footer.jsp" %>
		</footer>

	</div>


	<a id="goToTop"><i class="fa fa-angle-up top-icon"></i><i
		class="fa fa-angle-up"></i></a>

	<script src="${js}/jquery.js"></script>
	<script src="${js}/plugins.js"></script>

	<script src="${js}/functions.js"></script>
</body>
</html>
