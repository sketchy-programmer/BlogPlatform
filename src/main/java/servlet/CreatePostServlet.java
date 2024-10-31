package servlet;

import dao.PostDAO;
import model.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/createPost")
public class CreatePostServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userEmail") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String title = request.getParameter("title");
        String content = request.getParameter("content");
        int authorId = (int) session.getAttribute("userId"); // Assuming you stored the user ID in session

        Post post = new Post(authorId, title, content, authorId, null);
        PostDAO postDAO = new PostDAO();

        if (postDAO.createPost(post)) {
            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("errorMessage", "Failed to create post.");
            request.getRequestDispatcher("createPost.jsp").forward(request, response);
        }
    }
}
