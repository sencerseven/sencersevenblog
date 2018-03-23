<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<style type="text/css">

div.bhoechie-tab-container{
  z-index: 10;
  background-color: #ffffff;
  padding: 0 !important;
  border-radius: 4px;
  -moz-border-radius: 4px;
  border:1px solid #ddd;
  margin-top: 20px;
  margin-bottom:50px;
  -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  box-shadow: 0 6px 12px rgba(0,0,0,.175);
  -moz-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
}
div.bhoechie-tab-menu{
  padding-right: 0;
  padding-left: 0;
  padding-bottom: 0;
}
div.bhoechie-tab-menu div.list-group{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a .fas,
div.bhoechie-tab-menu div.list-group>a .fa {
  color: #5A55A3;
}
div.bhoechie-tab-menu div.list-group>a:first-child{
  border-top-right-radius: 0;
  -moz-border-top-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a:last-child{
  border-bottom-right-radius: 0;
  -moz-border-bottom-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a.active,
div.bhoechie-tab-menu div.list-group>a.active .fas,
div.bhoechie-tab-menu div.list-group>a.active .fa{
  background-color: #5A55A3;
  background-image: #5A55A3;
  color: #ffffff;
}
div.bhoechie-tab-menu div.list-group>a.active:after{
  content: '';
  position: absolute;
  left: 100%;
  top: 50%;
  margin-top: -13px;
  border-left: 0;
  border-bottom: 13px solid transparent;
  border-top: 13px solid transparent;
  border-left: 10px solid #5A55A3;
}

div.bhoechie-tab-content{
  background-color: #ffffff;
  /* border: 1px solid #eeeeee; */
  padding-left: 20px;
  padding-top: 10px;
}

div.bhoechie-tab div.bhoechie-tab-content:not(.active){
  display: none;
}

</style>
    
<div class="container">
	<div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab-container">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
              <div class="list-group">
                <a href="#" class="list-group-item active text-center">
                  <h4 class="fas fa-cog"></h4><br/>Genel Ayarlar
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="fas fa-road"></h4><br/>Hesap Ayarları
                </a>
              
              </div>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
                <!-- flight section -->
                <div class="bhoechie-tab-content active">
                
               
                    <center>
                     <div class="article-avatar">
								<a href="../../../../author/7uptheme/index.html"
									class="hvr-rotate"><img alt=''
									src='${contextRoot}/resources/images/uploads/${User.imageURL}'
									class='avatar avatar-100 photo' height='100' width='100' /></a>
							</div>
                      <form:form action="${contextRoot}/profile/user" method="POST" modelAttribute="userProfile" enctype="multipart/form-data">
                      	<div class="row">
							<div class="form-group">
								<label class="control-label col-md-4" for="brand">Adınız :</label>
	
								<div class="col-md-4">
									<form:input type="text" id="brand" path="firstName"
										placeholder="Brand Name" class="form-control"/>
								</div>
							</div>
						</div>
                      	<div class="row">
	                      	<div class="form-group">
								<label class="control-label col-md-4" for="brand">Soyadınız :</label>
	
								<div class="col-md-4">
									<form:input type="text" id="brand" path="lastName"
										placeholder="Brand Name" class="form-control"/>
								</div>
							</div>
                      	</div>
                      	<div class="row">
	                      	<div class="form-group">
								<label class="control-label col-md-4" for="File">Profil Resmi : </label>
	
								<div class="col-md-4">
									<form:input type="file" path="multipartFile" />
								</div>
							</div>
                      	</div>
                      	<input type="submit" value="Kaydet"/>
                      </form:form>
                    </center>
                </div>
                <!-- train section -->
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="fas fa-road" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Train Reservation</h3>
                    </center>
                </div>

            </div>
        </div>
  </div>
</div>