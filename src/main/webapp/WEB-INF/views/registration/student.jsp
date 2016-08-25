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
        
        <spring:bind path="student.civilite">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:radiobutton path="student.civilite" value="Monsieur"/> Monsieur
                <form:radiobutton path="student.civilite" value="Madame"/> Madame
                <form:errors path="student.civilite"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="student.firstname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="student.firstname" class="form-control" placeholder="Nom"></form:input>
                <form:errors path="student.firstname"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="student.lastname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="student.lastname" class="form-control" placeholder="Prenom"></form:input>
                <form:errors path="student.lastname"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="student.birthDay">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="student.birthDay" class="form-control" placeholder="Date de naissance"></form:input>
                <form:errors path="student.birthDay"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="student.address">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="student.address" class="form-control" placeholder="Adresse"></form:input>
                <form:errors path="student.address"></form:errors>
            </div>
        </spring:bind>     
        <spring:bind path="student.city">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="student.city" class="form-control" placeholder="Ville"></form:input>
                <form:errors path="student.city"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="student.country">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="student.country" class="form-control" placeholder="Pays"></form:input>
                <form:errors path="student.country"></form:errors>
            </div>
        </spring:bind>        
        <spring:bind path="student.zipcode">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="student.zipcode" class="form-control" placeholder="Code postal"></form:input>
                <form:errors path="student.zipcode"></form:errors>
            </div>
        </spring:bind>        
        <spring:bind path="student.cellphone">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="student.cellphone" class="form-control" placeholder="Telephone"></form:input>
                <form:errors path="student.cellphone"></form:errors>
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
		
		<!-- AMBITIONS -->
		
        <spring:bind path="situation.degree">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="situation.degree" class="form-control" placeholder="Niveau d'etudes"></form:input>
                <form:errors path="situation.degree"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="situation.school">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="situation.school" class="form-control" placeholder="Ecole"></form:input>
                <form:errors path="situation.school"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="situation.discipline">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="situation.discipline" class="form-control" placeholder="Nature des etudes"></form:input>
                <form:errors path="situation.discipline"></form:errors>
            </div>
        </spring:bind>
        <spring:bind path="situation.professionnal_wish">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:textarea type="text" path="situation.professionnal_wish" class="form-control" placeholder="Souhait professionnel"/>
                <form:errors path="situation.professionnal_wish"></form:errors>
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