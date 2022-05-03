import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AuthorServlet", urlPatterns = "/authors")
public class AuthorsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Authors authorsDao = new AuthorsDao();          //   Gets the DB connections
        List<Author> authors = authorsDao.all();        //   Relays data from DB
        req.setAttribute("authors", authors);
        req.getRequestDispatcher("WEB-INF/quotes/authors.jsp").forward(req, resp);
    }
}
