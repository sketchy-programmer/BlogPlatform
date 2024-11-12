<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
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
  <div class="container">
        <h1>Create New Post</h1>
        <form action="createPost" method="post">
        	<div class="form-group">
	        	<label for="title">Title:</label>
	            <input class="form-control" type="text" id="title" name="title" required>
        	</div>
        	<div class="form-group">
	        	<label for="content">Content:</label>
	            <textarea class="form-control" id="content" name="content" required></textarea>
        	</div>
            <input class="btn btn-primary" style="margin-bottom: 5px;" type="submit" value="Create Post">
        </form>
        <a class="link btn btn-primary" href="home.jsp">Back to Home</a>
        <a href="logout" class="logout-button btn btn-primary">Logout</a>
    </div>
</body>
<<<<<<< HEAD
  <footer>
    <p>&copy; 2024 Blog Platform. All rights reserved.</p>
  </footer>
=======
>>>>>>> 3f2833a1247ee598369a4fa497530d5c931ff064
</html>
