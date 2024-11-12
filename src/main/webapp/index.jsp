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
<meta charset="ISO-8859-1">
<title>Blog Platform</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="index.css" rel="stylesheet"> 
    
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

  <main>
  
<section class="hero">
  <table class="hero-table">
    <tr>
      <td class="hero-content">
        <h1>Create a blog</h1>
        <p>Share your story with the world. Create a beautiful, personalized blog that fits your brand. Grow your audience with built-in marketing tools, or transform your passion into revenue by gating access with a paywall.</p>
        <button class="get-started-btn" ><a href="createPost.jsp">Get Started</a></button>
      </td>
    </tr>
  </table>
</section>
<section class="blog-examples">
      <div class="container">
        <div class="blog-example">
          <img src="https://media.istockphoto.com/id/935746242/photo/mata-atlantica-atlantic-forest-in-brazil.jpg?s=612x612&w=0&k=20&c=NqE6m2Q8J2w6M7x7Pi8VxnMzLzq-HJQvCt5EMuvMU5o=" alt="Blog Post Image">
          <h3>Amazon Rainforest</h3>
          <p>The Amazon Rainforest, often called the "lungs of the Earth," plays a vital role in regulating the planet's climate and biodiversity.</p>
          <a href="#">Read More</a>
        </div>
        <div class="blog-example">
          <img src="https://mintleavesindiankitchen.ca/wp-content/uploads/2021/07/Butter-Chicken-London-Ontario-Mint-Leaves-Indian-Kitchen-1.jpg" alt="Blog Post Image">
          <h3>Butter Chicken</h3>
          <p>Indulge in the rich, creamy goodness of Butter Chicken – a timeless Indian classic that’s both flavorful and comforting!</p>
          <a href="#">Read More</a>
        </div>
        <div class="blog-example">
          <img src="https://assets.cityexperiences.com/wp-content/uploads/2023/03/niagara-falls-sunrise.jpg" alt="Blog Post Image">
          <h3>Niagra Falls</h3>
          <p> A breathtaking natural wonder where the power of nature meets awe-inspiring beauty, drawing millions of visitors each year.</p>
          <a href="#">Read More</a>
        </div>
      </div>
    </section>
  </main>

  <footer>
    <p>&copy; 2024 Blog Platform. All rights reserved.</p>
  </footer>
</body>
</html>