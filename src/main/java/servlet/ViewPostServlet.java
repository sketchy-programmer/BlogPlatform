package servlet;

import dao.CommentDAO;
import dao.PostDAO;
import model.Comment;
import model.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/viewPost")
public class ViewPostServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int postId = Integer.parseInt(request.getParameter("postId"));

        PostDAO postDAO = new PostDAO();
        CommentDAO commentDAO = new CommentDAO();

        Post post = postDAO.getPostById(postId);
        List<Comment> comments = commentDAO.getCommentsByPostId(postId);

        request.setAttribute("post", post);
        request.setAttribute("comments", comments);
        request.getRequestDispatcher("viewPost.jsp").forward(request, response);
    }
}
