import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/favcity")
public class FavoriteCity extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1>Submit Your Favorite City</h1>");
        String html = "<form method='POST'>";
        html += "<label for='city'>City</label>";
        html += "<input name='city' id='city' placeholder='Your Favorite City Here'>";
        html += "<button>Submit</button>";
        html += "</form>";
        resp.getWriter().println(html);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String favCityInput = req.getParameter("city");
        System.out.println("The following was sent: " + favCityInput);
        resp.sendRedirect("/favcity/result?city=" + favCityInput);
    }
}
