<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Post" %>
<%@ page import="dao.PostDAO" %>

<%
    PostDAO postDAO = new PostDAO();
    List<Post> posts = postDAO.getAllPosts();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<<<<<<< HEAD
    <link href="home.css" rel="stylesheet"> 
=======
    
</head>
<body style="margin-left: 10px;">
    <h1>Welcome to the Blog</h1>
    <a href="createPost.jsp" class="link btn btn-primary">Create New Post</a>
    <h2>Recent Posts</h2>
    <ul>
        <%
            for (Post post : posts) {
        %>
                <li style="list-style-type: none;">
                    <a class="link btn btn-info" style="margin-bottom: 5px; " href="viewPost.jsp?postId=<%= post.getPostId() %>"><%= post.getTitle() %></a>
                </li>
        <%
            }
        %>
    </ul>
    <a href="logout" class="logout-button btn btn-primary">Logout</a>
</body>
</html>
