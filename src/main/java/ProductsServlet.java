import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name="Products", urlPatterns = "/Products")
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Products productsDao = DaoFactory.getProductsDao();                     //   Goes out and get data from db
        List<Product> products = productsDao.all();                             //   Feeds results into arr var

        req.setAttribute("products", products);                              //   QUESTIONS ON THIS
        RequestDispatcher view = req.getRequestDispatcher("/Products.jsp");  //
        view.forward(req, resp);                                                //   !!!!!!!!!!!!!!!!!!
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("name");                             //   Set vars from form
        double price = Double.parseDouble(req.getParameter("price"));

        Product product = new Product(name, price);                           //   Build product obj

        Products productsDao = DaoFactory.getProductsDao();                   //   Using an interface, we instantiate
        productsDao.insert(product);                                          // a DaoFactory obj to use the meth

        List<Product> products = productsDao.all();

        req.setAttribute("products", products);
        RequestDispatcher view = req.getRequestDispatcher("/Products.jsp");
        view.forward(req, resp);

    }
}  //  <--END
