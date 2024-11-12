package servlet;

import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("Attempting to login with email: " + email);

        UserDAO userDAO = new UserDAO();

        // Validate user credentials
        if (userDAO.validateUser(email, password)) {
            System.out.println("User validated successfully");

            // If valid, create a session and redirect to homepage
            User user = userDAO.getUserByEmail(email);
            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("userId", user.getUserId());
                session.setAttribute("userEmail", user.getEmail());
                response.sendRedirect("home.jsp");
            } else {
                System.out.println("User not found in database after validation");
                request.setAttribute("errorMessage", "either the email or password is Invalid or user is not register");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            System.out.println("Invalid login credentials");
            request.setAttribute("errorMessage", "Invalid email or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}
