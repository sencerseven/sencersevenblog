<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
							data-dark-logo="${contextRoot}/resources/images/logo-dark.png"> <img
							src="${contextRoot}/resources/images/logo.png" alt="Polo Logo">
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
							<li class="hidden-xs"></li>
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
							<%@include file="./shared/navbar.jsp"%>
						</div>
					</div>

				</div>
			</div>
		</header>


		<section id="page-content" class="sidebar-right">
			<div class="container">
				<div class="row">

					<c:if test="${userClickHomePage == true}">
						<%@include file="home.jsp"%>
					</c:if>


					<div class="sidebar col-md-3">
						<%@include file="./shared/sidebar.jsp"%>
					</div>

				</div>
			</div>
		</section>


		<footer id="footer" class="footer-light">
			<%@include file="./shared/footer.jsp"%>
		</footer>

	</div>


	<a id="goToTop"><i class="fa fa-angle-up top-icon"></i><i
		class="fa fa-angle-up"></i></a>

	<script src="${js}/jquery.js"></script>
	<script src="${js}/plugins.js"></script>

	<script src="${js}/functions.js"></script>
</body>
</html>
