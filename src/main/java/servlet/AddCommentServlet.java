package servlet;

import dao.CommentDAO;
import model.Comment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet("/addComment")
public class AddCommentServlet extends HttpServlet {
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

        int postId = Integer.parseInt(request.getParameter("postId"));
        int userId = (int) session.getAttribute("userId"); // Assuming userId is stored in session
        String content = request.getParameter("content");

        Comment comment = new Comment();
        comment.setPostId(postId);
        comment.setUserId(userId);
        comment.setContent(content);
        comment.setCreatedAt(new Date()); // Set created timestamp

        CommentDAO commentDAO = new CommentDAO();

        if (commentDAO.addComment(comment)) {
            response.sendRedirect("viewPost?postId=" + postId);
        } else {
            request.setAttribute("errorMessage", "Failed to add comment.");
            request.getRequestDispatcher("viewPost.jsp").forward(request, response);
        }
    }
}
