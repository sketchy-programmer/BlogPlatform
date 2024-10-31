<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Post</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
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
</html>
