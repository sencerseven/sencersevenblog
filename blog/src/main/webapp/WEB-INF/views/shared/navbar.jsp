<nav>
	<ul>
		<li><a href="index.html">Home</a></li>
		<li class="dropdown mega-menu-item"><a href="#">Blog</a>
			<ul class="dropdown-menu">
				<li class="mega-menu-content">
					<div class="row">
						<div class="col-md-2-5">
							<ul>
							<c:forEach items="${allCategories}" var="category">
							<li class="mega-menu-title">${category.categoryName}</li>
							</c:forEach>
								
								<li><a href="blog-left-image-sidebar-right.html">Right
										Sidebar</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul></li>
	</ul>
</nav>