import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/pageCounter")
public class PageCounter extends HttpServlet {
    int pageCount = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        pageCount = pageCount + 1;
        if (req.getParameter("reset") != null) {
            pageCount = 0;
            resp.sendRedirect("/pageCounter");
        } else {
            resp.getWriter().println("<h1>This Page Was Viewed: " + pageCount+ " </h1>");
            String html = "" +
                    "<form>\n" +
                    "    <input type=\"hidden\" name=\"reset\" value=true>\n" +
                    "    <button>Reset</button>\n" +
                    "</form>";
            resp.getWriter().println(html);
        }

    }

}
