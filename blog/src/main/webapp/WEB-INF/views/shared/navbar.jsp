<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div >
	<div class="wpb_column column_container col-sm-6">
		<div class="vc_column-inner ">
			<div class="wpb_wrapper">
				<div class="logo vc_custom_1502275547636">
					<a href="${contextRoot }"><img width="170" height="40"
						src="${contextRoot }/resources/images/logo.png"
						class="attachment-full size-full" alt="" /></a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="vc_column-inner ">
			<div class="wpb_wrapper">


				<security:authorize access="isAnonymous()">
					<div class="box-search float-right">
						<a class="dropdown-item" href="${contextRoot}/login">Sign-in</a>
					</div>
				</security:authorize>

				<security:authorize access="isAuthenticated()">
						

					  <div class="col-sm-12">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="">
                          <span style="text-align:center; vertical-align: middle;">Hoşgeldin ${User.firstName }</span> <img class="user-avatar rounded-circle" src="${contextRoot }/resources/images/uploads/${User.imageURL}" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="${contextRoot}/profile"><i class="fas fa-user"></i>Profilim</a>
                                <br />
                                <a class="nav-link" href="${contextRoot}/perform-logout"><i class="fas fa-power-off"></i>Logout</a>
                        </div>
                    </div>

                    <div class="language-select dropdown" id="language-select">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
                            <i class="flag-icon flag-icon-us"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="language" >
                            <div class="dropdown-item">
                                <span class="flag-icon flag-icon-fr"></span>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-it"></i>
                            </div>
                        </div>
                    </div>

                </div>


				</security:authorize>

			</div>
		</div>
	</div>
</div>


<div class="vc_row-full-width vc_clearfix"></div>
<div data-vc-full-width="true" data-vc-full-width-init="false"
	class="vc_row wpb_row white-nav over-inherit">
	<div class="col-xs-8 wpb_column column_container col-sm-8">
		<div class="vc_column-inner ">
			<div class="wpb_wrapper">
				<nav class="main-nav">
					<ul id="menu-main-menu" class="menu">

						<li id="nav-menu-item-236"
							class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-taxonomy menu-item-object-category"><a
							href="${contextRoot}" class="menu-link main-menu-link">Anasayfa</a></li>

						<c:forEach items="${allCategoryAdvice}" var="category">
							<li id="nav-menu-item-233"
								class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-taxonomy menu-item-object-category"><a
								href="${contextRoot}/category/${category.categoryUrl }"
								class="menu-link main-menu-link">${category.categoryName }</a></li>
						</c:forEach>


					</ul>
					<span class="ion-navicon-round oswald-font">Menu</span>
				</nav>
			</div>
		</div>
	</div>
	<div class="col-xs-4 wpb_column column_container col-sm-4">
		<div class="vc_column-inner ">
			<div class="wpb_wrapper">
				<div class="right-menu">
					<ul class="float-right">
					</ul>
					<div class="box-search float-right">
						<form class="search-form" method="GET"
							action="${contextRoot}/search">
							<input type="text" name="text" value="Search"
								onblur="if (this.value=='') this.value = this.defaultValue"
								onfocus="if (this.value==this.defaultValue) this.value = ''">
							<input type="submit" value="">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="vc_row-full-width vc_clearfix"></div>
