<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Premium Education</title>
	
	<!-- FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Arvo" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
	
	<!-- FONT AWESOMES -->
	<link rel="stylesheet" href="${contextPath}/resources/fonts/font-awesome/css/font-awesome.min.css">
	
	<!-- BOOTSRAP CORE CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css"/>
	
	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/custom.css"/>
	
</head>
<body>
	
	<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
	
		<!-- Indicators -->
	  	<ol class="carousel-indicators">
	    	<li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
	    	<li data-target="#bs-carousel" data-slide-to="1"></li>
	    	<li data-target="#bs-carousel" data-slide-to="2"></li>
	  	</ol>
	  
	  	<!-- Wrapper for slides -->
	  	<div class="carousel-inner">
	  	<!-- Menu -->
	  	<nav class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div id="navigation-bar" class="navbar-collapse collapse">
					<a class="navbar-brand" href="#"><img src="${contextPath}/resources/images/test-top-logo.png" alt=""></a>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#who">Presentation</a></li>
						<li><a href="#services">Nos services</a></li>
					</ul>
				</div>
			</div>
	  	</nav>	  

	    <div class="item slides active">
			<!-- Overlay -->
	  	  	<div class="overlay"></div>
	      	<div class="slide-1"></div>
	      	<div class="hero">
	        	<hgroup>
	            	<h1>We are creative</h1>        
	            	<h3>Get start your next awesome project</h3>
	        	</hgroup>
	        	<button class="btn btn-hero btn-lg" role="button">See all features</button>
	      	</div>
		</div>
	    <div class="item slides">
			<!-- Overlay -->
			<div class="overlay"></div>
			<div class="slide-2"></div>
			<div class="hero">        
		        <hgroup>
		            <h1>We are smart</h1>        
		            <h3>Get start your next awesome project</h3>
		        </hgroup>       
		        <button class="btn btn-hero btn-lg" role="button">See all features</button>
			</div>
		</div>
		<div class="item slides">
			<!-- Overlay -->
			<div class="overlay"></div>
		    <div class="slide-3"></div>
		    <div class="hero">        
				<hgroup>
		            <h1>We are amazing</h1>        
		            <h3>Get start your next awesome project</h3>
		        </hgroup>
		        <button class="btn btn-hero btn-lg" role="button">See all features</button>
	      	</div>
	    </div>
	  </div> 
	</div>
	
	<div id="who">
		<div class="container homepage">
			<img src="${contextPath}/resources/images/logo-test.png" title="Premium Education" alt="PREMIUMEDUCATION">
			<h2><span>Presentation</span></h2>
			<hr style="	border-top: 1px solid #7bbca9;">
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
				when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into
				electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
				and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
			</p>
		</div>
	</div>
	
	<div id="services">
		<div class="container homepage">
			<h2>Nos Services</h2>
			<hr>
			<div class="row">
				<div class="col-md-6">
		            <span class="fa-stack fa-4x">
		              <i class="fa fa-circle fa-stack-2x"></i>
		              <i class="fa fa-user fa-stack-1x fa-inverse"></i>
		            </span>
		            <h3>Etudiants</h3>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
					 when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into
					 electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
					 and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
					</p>
					<p><a class="btn btn-default" href="#" role="button">Je trouve mon stage &raquo;</a></p>
				</div>

				<div class="col-md-6">
		            <span class="fa-stack fa-4x">
		              <i class="fa fa-circle fa-stack-2x"></i>
		              <i class="fa fa-building fa-stack-1x fa-inverse"></i>
		            </span>
		            <h3>Entreprises</h3>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
					 when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into
					 electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
					 and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
					</p>
					<p><a class="btn btn-default" href="#" role="button">Je publie mes offres &raquo;</a></p>
				</div>
			</div>
		</div>
	</div>
	
	<footer>
		<div class="container">

		</div>
	</footer>


	<!-- Bootstrap core Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
