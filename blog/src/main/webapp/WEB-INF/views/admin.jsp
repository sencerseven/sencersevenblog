<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<spring:url var="css" value="/resources/admin/css"></spring:url>
<spring:url var="scss" value="/resources/admin/scss"></spring:url>
<spring:url var="js" value="/resources/admin/js"></spring:url>
<c:set var="contextRoot" value="${pageContext.request.contextPath}/admin"></c:set>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sufee Admin - HTML5 Admin Template</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="${css}/normalize.css">
    <link rel="stylesheet" href="${css}/bootstrap.min.css">
    <link rel="stylesheet" href="${css}/font-awesome.min.css">
    <link rel="stylesheet" href="${css}/themify-icons.css">
    <link rel="stylesheet" href="${css}/flag-icon.min.css">
    <link rel="stylesheet" href="${css}/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="${scss}/style.css">
    <link href="${css}/lib/vector-map/jqvmap.min.css" rel="stylesheet">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>


    <!-- Left Panel -->
		<%@include file="./admin_shared/left-panel.jsp" %>
    
    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <%@include file="./admin_shared/navbar.jsp" %><!-- /header -->
        <!-- Header-->

        	
        <div class="content mt-3">
        
        <c:if test="${adminClickHomePage == true }">
			<%@include file="./admin_page/home.jsp" %>
        </c:if>
        
        <c:if test="${adminClickCategoryPage == true }">
			<%@include file="./admin_page/category.jsp" %>
        </c:if>

		<c:if test="${adminClickCategoryAddPage == true }">
			<%@include file="./admin_page/category-add.jsp" %>
        </c:if>
        
        <c:if test="${adminClickPostsPage == true }">
			<%@include file="./admin_page/post.jsp" %>
        </c:if>

		<c:if test="${adminClickPostAddPage == true }">
			<%@include file="./admin_page/post-add.jsp" %>
        </c:if>        
        
        
        </div> <!-- .content -->
    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <script src="${js}/vendor/jquery-2.1.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="${js}/plugins.js"></script>
    <script src="${js}/main.js"></script>
	<script src="${js}/myapp.js"></script>

    <script src="${js}/lib/chart-js/Chart.bundle.js"></script>
    <script src="${js}/dashboard.js"></script>
    <script src="${js}/widgets.js"></script>
    <script src="${js}/lib/vector-map/jquery.vmap.js"></script>
    <script src="${js}/lib/vector-map/jquery.vmap.min.js"></script>
    <script src="${js}/lib/vector-map/jquery.vmap.sampledata.js"></script>
    <script src="${js}/lib/vector-map/country/jquery.vmap.world.js"></script>
     <script src="${js}/bootbox.min.js"></script>
    
    <script>
    	window.contextRoot = '${contextRoot}';
    
        ( function ( $ ) {
            "use strict";

            jQuery( '#vmap' ).vectorMap( {
                map: 'world_en',
                backgroundColor: null,
                color: '#ffffff',
                hoverOpacity: 0.7,
                selectedColor: '#1de9b6',
                enableZoom: true,
                showTooltip: true,
                values: sample_data,
                scaleColors: [ '#1de9b6', '#03a9f5' ],
                normalizeFunction: 'polynomial'
            } );
        } )( jQuery );
    </script>

</body>
</html>
