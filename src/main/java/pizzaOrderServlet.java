import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

@WebServlet("/pizza-order")
public class pizzaOrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        String crust = req.getParameter("crust");
        String sauce = req.getParameter("sauce");
        String size = req.getParameter("size");
        String address = req.getParameter("address");

        ArrayList<String>meats = new ArrayList<>();
        meats.add(req.getParameter("meat"));

        ArrayList<String>veg = new ArrayList<>();
        veg.add(req.getParameter("veg"));

        ArrayList<String>cheese = new ArrayList<>();
        cheese.add(req.getParameter("cheese"));


        req.setAttribute("crust", crust );
        req.setAttribute("sauce", sauce );
        req.setAttribute("size", size );
        req.setAttribute("address", address );
        req.setAttribute("meats", meats );
        req.setAttribute("veg", veg );
        req.setAttribute("cheese", cheese );

        RequestDispatcher view = req.getRequestDispatcher("/pizza-order.jsp");


    }

}
