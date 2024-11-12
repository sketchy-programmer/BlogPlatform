<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Post" %>
<%@ page import="dao.PostDAO" %>
<%@ page import="dao.CommentDAO" %>
<%@ page import="model.Comment" %>
<%@ page import="java.util.List" %>

<%
    String postId = request.getParameter("postId");
    PostDAO postDAO = new PostDAO();
    CommentDAO commentDAO = new CommentDAO();
    Post post = postDAO.getPostById(Integer.parseInt(postId));
    List<Comment> comments = commentDAO.getCommentsByPostId(Integer.parseInt(postId));
%>
<!DOCTYPE html>
<html>
<head>
    <title>View Post</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1><%= post.getTitle() %></h1>
        <p><%= post.getContent() %></p>

        <h2>Comments</h2>
        <div class="comments-section">
            <!-- Display existing comments -->
            <c:if test="${!comments.isEmpty()}">
                <ul>
                    <% for (Comment comment : comments) { %>
                        <li>
                            <p><strong>User <%= comment.getUserId() %>:</strong> <%= comment.getContent() %></p>
                            <p><small><%= comment.getCreatedAt() %></small></p>
                        </li>
                    <% } %>
                </ul>
            </c:if>
            <c:if test="${comments.isEmpty()}">
                <p>No comments yet. Be the first to comment!</p>
            </c:if>
        </div>

        <!-- Comment form -->
        <form class="form-group" action="addComment" method="post">
            <input class="form-control" type="hidden" name="postId" value="<%= postId %>">
            <textarea class="form-control" name="content" placeholder="Write a comment..." required></textarea><br>
            <button class="btn btn-primary" type="submit" style="margin-bottom: 5px;">Add Comment</button>
        </form>
        
        <a class="link btn btn-primary" href="home.jsp">Back to Home</a>
        <a href="logout" class="logout-button btn btn-primary">Logout</a>
    </div>
</body>
</html>
