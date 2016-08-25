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

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        
        <!-- INFORMATIONS -->
        

        <spring:bind path="company.social_reason">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="company.social_reason" class="form-control" placeholder="Raison sociale"></form:input>
                <form:errors path="company.social_reason"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="company.address">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="company.address" class="form-control" placeholder="Adresse"></form:input>
                <form:errors path="company.address"></form:errors>
            </div>
        </spring:bind>     
        <spring:bind path="company.city">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="company.city" class="form-control" placeholder="Ville"></form:input>
                <form:errors path="company.city"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="company.country">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="company.country" class="form-control" placeholder="Pays"></form:input>
                <form:errors path="company.country"></form:errors>
            </div>
        </spring:bind>        
        <spring:bind path="company.zipcode">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="company.zipcode" class="form-control" placeholder="Code postal"></form:input>
                <form:errors path="company.zipcode"></form:errors>
            </div>
        </spring:bind> 
        
        
        <!-- IDENTIFIANTS -->
        
        <spring:bind path="user.username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="user.username" class="form-control" placeholder="Username"></form:input>
                <form:errors path="user.username"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="user.password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="user.password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="user.password"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="user.passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="user.passwordConfirm" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="user.passwordConfirm"></form:errors>
            </div>
        </spring:bind>
		
		<!-- RECRUTEUR -->
		
        <spring:bind path="recruiter.civilite">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:radiobutton path="recruiter.civilite" value="Monsieur"/> Monsieur
                <form:radiobutton path="recruiter.civilite" value="Madame"/> Madame
                <form:errors path="recruiter.civilite"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="recruiter.firstname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="recruiter.firstname" class="form-control" placeholder="Nom"></form:input>
                <form:errors path="recruiter.firstname"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="recruiter.lastname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="recruiter.lastname" class="form-control" placeholder="Prenom"></form:input>
                <form:errors path="recruiter.lastname"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="recruiter.cellphone">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="recruiter.cellphone" class="form-control" placeholder="Telephone"></form:input>
                <form:errors path="recruiter.cellphone"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="recruiter.company_number">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="recruiter.company_number" class="form-control" placeholder="Telephone de la Compagnie"></form:input>
                <form:errors path="recruiter.company_number"></form:errors>
            </div>
        </spring:bind>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>