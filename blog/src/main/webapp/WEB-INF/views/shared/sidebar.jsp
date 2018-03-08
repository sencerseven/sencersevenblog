<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="pinOnScroll">

							<div class="widget  widget-newsletter">
								<form id="widget-search-form-sidebar"
									action="search-results-page.html" method="get"
									class="form-inline">
									<div class="input-group">
										<input type="text" aria-required="true" name="q"
											class="form-control widget-search-form"
											placeholder="Search for pages..."> <span
											class="input-group-btn">
											<button type="submit" id="widget-widget-search-form-button"
												class="btn btn-default">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>


							<div class="widget">
								<div id="tabs-01" class="tabs simple">
									<ul class="tabs-navigation">
										<li class="active"><a href="#tab1">Recent</a></li>
										<li class=""><a href="#tab2">Featured</a></li>
										<li class=""><a href="#tab3">Recent</a></li>
									</ul>
									<div class="tabs-content">
										<div class="tab-pane active" id="tab1">
											<div class="post-thumbnail-list">
											
												<c:forEach items="${getSidebarPosts}" var="sidebarPost">
													<div class="post-thumbnail-entry">
														<img alt="" src="${contextRoot}/resources/images/uploads/${sidebarPost.images[0].imageName}">
														<div class="post-thumbnail-content">
															${fn:substring(sidebarPost.title,0,40)}.<a href="${contextRoot}/category/${sidebarPost.category.categoryUrl}/post/${sidebarPost.postUrl}">Devamı için..</a> <span
																class="post-date"><i class="fa fa-clock-o"></i> 6m
																ago</span> <span class="post-category"><i
																class="fa fa-tag"></i> ${sidebarPost.category.categoryName}</span>
														</div>
													</div>
												</c:forEach>											
										
											</div>
										</div>
										<div class="tab-pane" id="tab2">
											<div class="post-thumbnail-list">
												<div class="post-thumbnail-entry">
													<img alt="" src="${contextRoot}/resources/images/blog/thumbnail/6.jpg">
													<div class="post-thumbnail-content">
														<a href="#">Consectetur adipiscing elit</a> <span
															class="post-date"><i class="fa fa-clock-o"></i>
															24h ago</span> <span class="post-category"><i
															class="fa fa-tag"></i> Lifestyle</span>
													</div>
												</div>
												<div class="post-thumbnail-entry">
													<img alt="" src="${contextRoot}/resources/images/blog/thumbnail/7.jpg">
													<div class="post-thumbnail-content">
														<a href="#">Lorem ipsum dolor sit amet, consectetur
															adipiscing elit</a> <span class="post-date"><i
															class="fa fa-clock-o"></i> 11h ago</span> <span
															class="post-category"><i class="fa fa-tag"></i>
															Lifestyle</span>
													</div>
												</div>
												<div class="post-thumbnail-entry">
													<img alt="" src="${contextRoot}/resources/images/blog/thumbnail/8.jpg">
													<div class="post-thumbnail-content">
														<a href="#">Fringilla luctus Lorem ipsum dolor sit
															amet</a> <span class="post-date"><i
															class="fa fa-clock-o"></i> 11h ago</span> <span
															class="post-category"><i class="fa fa-tag"></i>
															Lifestyle</span>
													</div>
												</div>
											</div>
										</div>
										<div class="tab-pane" id="tab3">
											<div class="post-thumbnail-list">
												<div class="post-thumbnail-entry">
													<img alt="" src="${contextRoot}/resources/images/blog/thumbnail/7.jpg">
													<div class="post-thumbnail-content">
														<a href="#">Lorem ipsum dolor sit amet, consectetur
															adipiscing elit</a> <span class="post-date"><i
															class="fa fa-clock-o"></i> 11h ago</span> <span
															class="post-category"><i class="fa fa-tag"></i>
															Lifestyle</span>
													</div>
												</div>
												<div class="post-thumbnail-entry">
													<img alt="" src="${contextRoot}/resources/images/blog/thumbnail/8.jpg">
													<div class="post-thumbnail-content">
														<a href="#">Fringilla luctus Lorem ipsum dolor sit
															amet</a> <span class="post-date"><i
															class="fa fa-clock-o"></i> 11h ago</span> <span
															class="post-category"><i class="fa fa-tag"></i>
															Lifestyle</span>
													</div>
												</div>
												<div class="post-thumbnail-entry">
													<img alt="" src="${contextRoot}/resources/images/blog/thumbnail/6.jpg">
													<div class="post-thumbnail-content">
														<a href="#">Consectetur adipiscing elit</a> <span
															class="post-date"><i class="fa fa-clock-o"></i>
															24h ago</span> <span class="post-category"><i
															class="fa fa-tag"></i> Lifestyle</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>


							<div class="widget widget-tweeter" data-username="envato"
								data-limit="2">
								<h4 class="widget-title">Recent Tweets</h4>
							</div>


							<div class="widget  widget-tags">
								<h4 class="widget-title">Tags</h4>
								<div class="tags">
									<a href="#">Design</a> <a href="#">Portfolio</a> <a href="#">Digital</a>
									<a href="#">Branding</a> <a href="#">HTML</a> <a href="#">Clean</a>
									<a href="#">Peace</a> <a href="#">Love</a> <a href="#">CSS3</a>
									<a href="#">jQuery</a>
								</div>
							</div>

						</div>