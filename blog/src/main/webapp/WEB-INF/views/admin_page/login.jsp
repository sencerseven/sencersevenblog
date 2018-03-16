<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <spring:url value="/resources/admin/css" var="css" />
    <spring:url value="/resources/admin/scss" var="scss" />
    <spring:url value="/resources/admin/js" var="js" />
    <spring:url value="/resources/admin/image" var="images" />
    <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    
<!doctype html>
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

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="index.html">
                        <img class="align-content" src="images/logo.png" alt="">
                    </a>
                </div>
                <div class="login-form">
                    <form action="http://localhost:8080/blog/admin/login" method="POST">
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="text" name="email" id="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="text" name="password" class="form-control" placeholder="Password">
                        </div>
                        <input type="submit" class="btn btn-primary" value="login" />
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="${js}/vendor/jquery-2.1.4.min.js"></script>
    <script src="${js}/popper.min.js"></script>
    <script src="${js}/plugins.js"></script>
    <script src="${js}/main.js"></script>


</body>
</html>
