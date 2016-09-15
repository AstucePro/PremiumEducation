<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

	<!-- FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Arvo" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
	
	<!-- FONT AWESOMES -->
	<link rel="stylesheet" href="${contextPath}/resources/fonts/font-awesome/css/font-awesome.min.css">
	
	<!-- BOOTSRAP CORE CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css"/>
	<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
	
	<!-- CUSTOM CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/regular.css"/>
</head>

<body>

	<div class="first container">
		
		<!-- HEADER -->
		<header>
			<div class="wrap">
				<a><img alt="Premium" src="${contextPath}/resources/images/logo-medium.png"></a>
			</div>
		</header>
		
		<!-- NAVIGATION BAR -->
		<div id="menu">
			<nav>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
				    	<li id="accueil" class="effect">			      
				        	<img class="icon accueil" alt="Brand" src="${contextPath}/resources/images/home.png">
				           	<a href="#who">Accueil</a>
				        </li>
			            <li id="offre" class="effect">
			            	<img class="icon offre" alt="Brand" src="${contextPath}/resources/images/offer.png">		            	
			            	<a href="#get-involved">Mes offres</a>
			            </li>
			            <li id="document" class="effect">
			            	<img class="icon document" alt="Brand" src="${contextPath}/resources/images/file.png">
			            	<a href="#who">Mes documents</a>
			            </li>
			            <li id="compte" class="effect">
			            	<img class="icon compte" alt="Brand" src="${contextPath}/resources/images/user.png">			       
			            	<a href="#get-involved">Mon compte</a>
			            </li>
				    </ul>
				</div>
			</nav>
		</div>
		
		<!-- BREADCRUMB -->
		<div id="pagination" class="container-fluid breadcrumb flat">
			vous �tes ici :
			<a href="#">Accueil</a> >
			<a href="#">Mon compte</a> >
			<a href="#" class="active">Cr�ation</a>
		</div>
		
		<!-- FORM -->
		<div id="content" class="container-fluid">
			<form:form method="POST" modelAttribute="userForm" class="form-signin">
				<fieldset class="form-horizontal">
					
					<!-- COMPANY -->
					<div class="space">
						<h3 class="background"><span>Information sur votre entreprise</span></h3>
					</div>
					
					<spring:bind path="company.social_reason">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Raison sociale *:</label>
							<div class="col-sm-7 input-group">
								<form:input type="text" path="company.social_reason" class="form-control" placeholder="Raison Sociale"></form:input>
								<form:errors path="company.social_reason"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="company.address">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Adresse *:</label>
							<div class="col-sm-7 input-group">
				                <form:input type="text" path="company.address" class="form-control" placeholder="Adresse"></form:input>
				                <form:errors path="company.address"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="company.city">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Ville *:</label>
							<div class="col-sm-7 input-group">
				                <form:input type="text" path="company.city" class="form-control" placeholder="Ville"></form:input>
				                <form:errors path="company.city"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="company.country">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Pays *:</label>
							<div class="col-sm-7 input-group">
				                <form:input type="text" path="company.country" class="form-control" placeholder="Pays"></form:input>
				                <form:errors path="company.country"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="company.zipcode">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Code postale *:</label>
							<div class="col-sm-7 input-group">
				                <form:input type="text" path="company.zipcode" class="form-control" placeholder="Code postale"></form:input>
				                <form:errors path="company.zipcode"></form:errors>
							</div>
						</div>
					</spring:bind>

					<!-- IDENTIFICATION -->
					<div class="space">
						<h3 class="background"><span>Vos Identifiants</span></h3>
					</div>
					
					<spring:bind path="user.username">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Email *:</label>
							<div class="col-sm-7 input-group">
				                <form:input type="text" path="user.username" class="form-control" placeholder="Email"></form:input>
				                <form:errors path="user.username"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="user.password">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Mot de passe *:</label>
							<div class="col-sm-7 input-group">
				                <form:input type="text" path="user.password" class="form-control" placeholder="Mot de passe"></form:input>
				                <form:errors path="user.password"></form:errors>
							</div>
						</div>
					</spring:bind>

					<!-- RECRUITER INFO -->
					<div class="space">
						<h3 class="background"><span>Recruteur</span></h3>
					</div>
				
					<spring:bind path="recruiter.civilite">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Vous etes *:</label>
							<div class="col-sm-7 input-group">
								<label class="radio-inline">
									<form:radiobutton path="recruiter.civilite" value="Monsieur" /> Monsieur
								</label>
								<label class="radio-inline">
									<form:radiobutton path="recruiter.civilite" value="Madame" /> Madame
								</label>
								<form:errors path="student.civilite"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="recruiter.firstname">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Nom *:</label>
							<div class="col-sm-7 input-group">
								<form:input type="text" path="recruiter.firstname" class="form-control" placeholder="Nom"></form:input>
								<form:errors path="recruiter.firstname"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="recruiter.lastname">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">Pr�nom *:</label>
							<div class="col-sm-7 input-group">
								<form:input type="text" path="recruiter.lastname" class="form-control" placeholder="Prenom"></form:input>
								<form:errors path="recruiter.lastname"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="recruiter.cellphone">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">T�l�phone personnel*:</label>
							<div class="col-sm-7 input-group">
				                <form:input type="text" path="recruiter.cellphone" class="form-control" placeholder="T�l�phone personnel"></form:input>
				                <form:errors path="recruiter.cellphone"></form:errors>
							</div>
						</div>
					</spring:bind>
					<spring:bind path="recruiter.company_number">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label class="col-sm-5">T�l�phone entreprise *:</label>
							<div class="col-sm-7 input-group">
				                <form:input type="text" path="recruiter.company_number" class="form-control" placeholder="T�l�phone entreprise"></form:input>
				                <form:errors path="recruiter.company_number"></form:errors>
							</div>
						</div>
					</spring:bind>
					
					<hr>
						
					<button class="button btn btn-lg btn-primary" type="submit">Confirmer</button>
					<button class="button btn btn-lg btn-primary" type="reset">Annuler</button>
															
				</fieldset>
			</form:form>
		</div>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>