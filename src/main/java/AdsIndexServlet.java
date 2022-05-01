import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Ads adsDao = DaoFactory.getAdsDao();                     // Goes out and get data from db
        List<Ad> ads = adsDao.all();                             // Feeds results into arr var
        req.setAttribute("ads", ads);

        req.getRequestDispatcher("/ads/index.jsp").forward(req, resp);
    }
}
