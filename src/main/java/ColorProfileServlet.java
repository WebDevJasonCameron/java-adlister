import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ColorProfileServlet", urlPatterns = "/color-profile")
public class ColorProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/color-profile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();

        if (req.getParameter("forget") != null) {
            session.removeAttribute("font-color");
            session.removeAttribute("bg-color");
            resp.sendRedirect("/color-profile");
        } else {
            // Set color pref in session
            req.getSession().setAttribute("font-color", req.getParameter("font-color"));
            req.getSession().setAttribute("bg-color", req.getParameter("bg-color"));

            // Redirect user o the "/ads"
            resp.sendRedirect("/ads");
        }





    }
}
