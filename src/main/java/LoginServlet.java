import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Set up the Session
        HttpSession session = request.getSession();

        // Hard Code Vars
        if (request.getParameter("username").toString().equals("admin") &&
            request.getParameter("password").toString().equals("password")) {
            session.setAttribute("user", true);
            response.sendRedirect("/profile");
        } else {
            session.setAttribute("user", false);
            response.sendRedirect("/login");
        }
    }
}
