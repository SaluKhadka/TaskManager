<%--
  Created by IntelliJ IDEA.
  User: salu
  Date: 9/12/17
  Time: 2:58 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>


<div class="container" style="width: 40%">
<h1>LOGIN</h1>

<g:form action="login" method="POST">
    <div class="form-group">
        <label>Username</label>
        <g:textField name="login" class="form-control"/>
    </div>
    <div class="form-group">
        <label>Password</label>
        <g:passwordField name="password" class="form-control"/>
    </div>

    <div class="form-group">
        <label>Role</label>
        <div class="dropdown">
        <g:select name="role" from="${com.lft.taskmanger.Users.constraints.role.inList}"/>
        </div>
    </div>

    <g:actionSubmit value="Login" class="btn btn-primary"/>
    </div>
</g:form>
</div>
</body>
</html>