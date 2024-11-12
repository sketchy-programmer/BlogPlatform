<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog Platform</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="createPost.css" rel="stylesheet"> 
    
</head>
<body>
  <header>
    <nav>
      <div class="logo">
        <a href="#">BLOG PLATFORM</a>
      </div>
      <ul class="nav-links">
        <li><a href="index.jsp">HOME</a></li>
        <li><a href="createPost.jsp">CREATE POST</a></li>
        <li><a href="register.jsp">REGISTER</a></li>
      </ul>
      <div class="actions">
        <button class="login-page"><a href="login.jsp">Login</a></button>
        <button class="create-post"><a href="createPost.jsp">Get Started</a></button>
      </div>
    </nav>
  </header>
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
 <footer>
    <p>&copy; 2024 Blog Platform. All rights reserved.</p>
  </footer>
</html>
