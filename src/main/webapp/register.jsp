<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Register</h1>
        <form action="register" method="post">
			<div class="form-group">
				<label for="username">Username:</label>
	            <input class="form-control" type="text" id="username" name="username" required>
			</div>
            <div class="form-group">
	            <label for="email">Email:</label>
		        <input class="form-control" type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
		        <label for="password">Password:</label>
	        	<input class="form-control" type="password" id="password" name="password" required>  
            </div>
            
            
            <input class="btn btn-primary" type="submit" value="Register"><br></br>
        </form>
        <p>Already have an account? <a class="link" href="login.jsp">Login here</a>.</p>
    </div>
</body>
</html>
