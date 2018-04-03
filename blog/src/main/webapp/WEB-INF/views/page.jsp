<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="image" value="/resources/images"></spring:url>
<spring:url var="plugins" value="/resources/plugins"></spring:url>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="description" content="Just another WordPress site" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>


<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='s7upf-google-fonts-css'
	href='http://fonts.googleapis.com/css?family=Poppins:300,400,700%7COswald:300,400,700&ver=4.8.5'
	type='text/css' media='all' />
<link rel='stylesheet' id='bootstrap-css'
	href='${css}/lib/bootstrap.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'
	href='${css}/font-awesome.min.css'
	type='text/css' media='all' />
<link rel='stylesheet' id='font-ionicons-css'
	href='${css}/lib/ionicons.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='owl-carousel-css'
	href='${css}/lib/owl.carousel.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='hover-css' href='${css}/lib/hover.min.css'
	type='text/css' media='all' />
<link rel='stylesheet' 
	href='${css}/theme-unitest.css' type='text/css' media='all' />
<link rel='stylesheet' 
	href='${css}/lib/color.min.css' type='text/css' media='all' />
<link rel='stylesheet' 
	href='${css}/lib/theme.min.css' type='text/css' media='all' />
<link rel='stylesheet' 
	href='${css}/lib/responsive.min.css' type='text/css' media='all' />
<link rel='stylesheet' 
	href='${css}/lib/preload.min.css' type='text/css' media='all' />
<link rel='stylesheet' 
	href='${css}/custom-style.css' type='text/css' media='all' />
<link rel='stylesheet' 
	href='${css}/style.css' type='text/css' media='all' />
<link rel='stylesheet' id='js_composer_front-css'
	href='${css}/js_composer.min.css' type='text/css'
	media='all' />

<script type='text/javascript' src='${js}/jquery.js'></script>
<!-- 
<link rel="icon" href="wp-content/uploads/2017/08/favicon-32x32.png"
	sizes="32x32" />
<link rel="icon" href="wp-content/uploads/2017/08/favicon.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="wp-content/uploads/2017/08/favicon.png" />
<meta name="msapplication-TileImage"
	content="wp-content/uploads/2017/08/favicon.png" />
	
	-->
<style type="text/css" data-type="vc_shortcodes-custom-css">
.vc_custom_1502363064861 {
	margin-top: 30px !important;
}

.vc_custom_1507399182467 {
	margin-bottom: 30px !important;
}

.vc_custom_1501299027472 {
	margin-right: 0px !important;
	margin-bottom: 30px !important;
	margin-left: 0px !important;
	background-color: #ffffff !important;
}

.vc_custom_1501299027472 {
	margin-right: 0px !important;
	margin-bottom: 30px !important;
	margin-left: 0px !important;
	background-color: #ffffff !important;
}

.vc_custom_1501299027472 {
	margin-right: 0px !important;
	margin-bottom: 30px !important;
	margin-left: 0px !important;
	background-color: #ffffff !important;
}

.vc_custom_1501299027472 {
	margin-right: 0px !important;
	margin-bottom: 30px !important;
	margin-left: 0px !important;
	background-color: #ffffff !important;
}

.vc_custom_1501659588772 {
	margin-right: 0px !important;
	margin-bottom: 30px !important;
	margin-left: 0px !important;
	background-color: #ffffff !important;
}

.vc_custom_1502532941855 {
	margin-bottom: 50px !important;
	padding-top: 50px !important;
	padding-right: 90px !important;
	padding-bottom: 50px !important;
	padding-left: 90px !important;
}

.vc_custom_1503304340189 {
	margin-bottom: 30px !important;
}

.vc_custom_1501298977516 {
	border-left-width: 20px !important;
	padding-top: 15px !important;
	padding-right: 20px !important;
	padding-bottom: 15px !important;
}

.vc_custom_1501299354161 {
	padding-left: 5px !important;
}

.vc_custom_1501298977516 {
	border-left-width: 20px !important;
	padding-top: 15px !important;
	padding-right: 20px !important;
	padding-bottom: 15px !important;
}

.vc_custom_1501299354161 {
	padding-left: 5px !important;
}

.vc_custom_1501298977516 {
	border-left-width: 20px !important;
	padding-top: 15px !important;
	padding-right: 20px !important;
	padding-bottom: 15px !important;
}

.vc_custom_1501299354161 {
	padding-left: 5px !important;
}

.vc_custom_1501298977516 {
	border-left-width: 20px !important;
	padding-top: 15px !important;
	padding-right: 20px !important;
	padding-bottom: 15px !important;
}

.vc_custom_1501299354161 {
	padding-left: 5px !important;
}

.vc_custom_1501298977516 {
	border-left-width: 20px !important;
	padding-top: 15px !important;
	padding-right: 20px !important;
	padding-bottom: 15px !important;
}

.vc_custom_1501299354161 {
	padding-left: 5px !important;
}

.vc_custom_1501657342991 {
	padding-bottom: 20px !important;
}

.vc_custom_1502364522810 {
	margin-bottom: 0px !important;
}

.vc_custom_1504768226484 {
	margin-right: -10px !important;
	margin-left: -10px !important;
}

.vc_custom_1502364212824 {
	padding-bottom: 20px !important;
}
</style>
<noscript>
	<style type="text/css">
.wpb_animate_when_almost_visible {
	opacity: 1;
}
</style>
</noscript>
<script type="text/javascript">
	window.contextRoot='${pageContext.request.contextPath}';
</script>

</head>
<body
	class="home page-template page-template-visual-temlpate page-template-visual-temlpate-php page page-id-75 wpb-js-composer js-comp-ver-5.2.1 vc_responsive">
	<div id="loader-wrapper">
		<div id="loader"></div>
	</div>
	<div class="wrap ">
		<div id="header" class="header-page">
			<div class="container">
			<!-- Header Include -->
				<%@include file="./shared/navbar.jsp" %>
			</div>
		</div>
		<!--header Close-->
		<div id="main-content">
			<div class="container">
				<!-- Post -->
				<c:if test="${userClickHomePage == true }">
					<%@include file="home.jsp" %>
				</c:if>
				<c:if test="${userClickPostDetail == true }">
					<%@include file="post-detail.jsp" %>
				</c:if>
				<c:if test="${userClickCategoryDetail == true }">
					<%@include file="category-detail.jsp" %>
				</c:if>
				<c:if test="${userClickLoginPage == true }">
					<%@include file="login.jsp" %>
				</c:if>
				<c:if test="${userClickProfileDetails == true }">
					<%@include file="profile-detail.jsp" %>
				</c:if>
				<c:if test="${userClickSearch == true }">
					<%@include file="search.jsp" %>
				</c:if>
				
				<!-- #post-## -->
			</div>
		</div>
		<div id="footer" class="footer-page">
			<div class="container">
				<!-- Footer Include -->
				<%@include file="./shared/footer.jsp" %>
			</div>
		</div>
	</div>
	<!-- End wrap -->
	<a href="index.html#" class="scroll-top radius6" title=""><i
		class="fa fa-angle-up" aria-hidden="true"></i></a>
	<script type="text/javascript">
		(function($) {
			"use strict";
			$("head")
					.append(
							'<style id="sv_add_footer_css">.vc_custom_1504680607974{margin-right: 0px !important;margin-left: 0px !important;}.vc_custom_1504680676596{padding-top: 25px !important;}.vc_custom_1504681704034{margin-right: 0px !important;margin-left: 0px !important;}.vc_custom_1504682703286{padding-top: 25px !important;}.vc_custom_1500892589660{padding-top: 10px !important;padding-bottom: 10px !important;background-color: #ffffff !important;}.vc_custom_1502275547636{margin-top: 20px !important;margin-bottom: 20px !important;} .s7upf_1520526324{ background-color: #e42800; } .s7upf_1520526325{ background-color: #f5c531; } .s7upf_1520526326{ background-color: #bbd93a; } .s7upf_1520526327{ background-color: #f5c531; } .s7upf_1520526328{ background-color: #170171; } .s7upf_1520526329{ background-color: #bbd93a; } .s7upf_1520526330{ background-color: #e42800; } .s7upf_1520526331{ background-color: #42adb6; } .s7upf_1520526332{ background-color: #f5c531; } .s7upf_1520526333{ background-color: #f5c531; } .s7upf_1520526334{ background-color: #42adb6; } .s7upf_1520526335{ background-color: #f5c531; } .s7upf_1520526336{ background-color: #42adb6; } .s7upf_1520526337{ background-color: #42adb6; } .s7upf_1520526338{ background-color: #42adb6; } .s7upf_1520526339{ background-color: #42adb6; } .s7upf_1520526340{ background-color: #170171; } .s7upf_1520526341{ background-color: #170171; } .s7upf_1520526342{ background-color: #f5c531; } .s7upf_1520526343{ background-color: #170171; } .s7upf_1520526344{ background-color: #e42800; } .s7upf_1520526345{ background-color: #e42800; } .s7upf_1520526346{ background-color: #e42800; } .s7upf_1520526347{ background-color: #bbd93a; } .s7upf_1520526348{ background-color: #e42800; } .s7upf_1520526349{ background-color: #bbd93a; } .s7upf_1520526350{ background-color: #bbd93a; } .s7upf_1520526351{ background-color: #e42800; } .s7upf_1520526352{ background-color: #bbd93a; } .s7upf_1520526353{ background-color: #f5c531; } .s7upf_1520526354{ background-color: #f5c531; } .s7upf_1520526355{ background-color: #f5c531; } .s7upf_1520526356{ background-color: #f5c531; } .s7upf_1520526357{ background-color: #bbd93a; } .s7upf_1520526358{ background-color: #f5c531; } .s7upf_1520526359{ background-color: #170171; } .s7upf_1520526360{ background-color: #e42800; } .s7upf_1520526361{ background-color: #f5c531; } .s7upf_1520526362{ background-color: #bbd93a; } .s7upf_1520526363{ background-color: #bbd93a; } .s7upf_1520526364{ background-color: #bbd93a; } .s7upf_1520526365{ background-color: #f5c531; } .s7upf_1520526366{ background-color: #bbd93a; } .s7upf_1520526367{ background-color: #42adb6; } .s7upf_1520526368{ border: 2px solid transperent; padding: 0 25px; } .vc_custom_1500950680342{padding-top: 20px !important;padding-bottom: 20px !important;background-color: #ffffff !important;}.vc_custom_1504769885774{padding-top: 45px !important;padding-bottom: 27px !important;background-color: #484949 !important;}.vc_custom_1502367027139{padding-top: 38px !important;padding-bottom: 38px !important;background-color: #242424 !important;}.vc_custom_1504769793499{padding-right: 20px !important;}.vc_custom_1503470983949{padding-right: 20px !important;padding-left: 20px !important;}.vc_custom_1503470972409{padding-left: 20px !important;}.vc_custom_1502366236922{margin-top: -5px !important;margin-bottom: 20px !important;}.vc_custom_1501125333678{margin-bottom: 30px !important;}.vc_custom_1501123565204{margin-bottom: 20px !important;}.vc_custom_1504769820403{margin-bottom: 20px !important;}.vc_custom_1504769844452{margin-bottom: 40px !important;border-top-width: 2px !important;padding-top: 30px !important;border-top-color: rgba(255,255,255,0.1) !important;border-top-style: solid !important;}.vc_custom_1501124367159{margin-bottom: 25px !important;}.vc_custom_1500958452561{margin-bottom: 0px !important;}</style>');
		})(jQuery);
	</script>
	

	<script type='text/javascript' src='${js}/post-like.js'></script>
	<script type='text/javascript' src='${js}/lib/bootstrap.min.js'></script>
	<script type='text/javascript' src='${js}/lib/owl.carousel.min.js'></script>
	<script type='text/javascript' src='${js}/lib/theme.min.js'></script>
	<script type='text/javascript' src='${js}/img-demo.js'></script>
	<script type='text/javascript' src='${js}/myApp.js'></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>
	<script type='text/javascript'
		src='${js}/js_composer_front.min.js'></script>

	<!--[if lte IE 9]>
<script type='text/javascript' src='wp-content/plugins/mailchimp-for-wp/assets/js/third-party/placeholders.min.js'></script>
<![endif]-->
</body>
</html>
