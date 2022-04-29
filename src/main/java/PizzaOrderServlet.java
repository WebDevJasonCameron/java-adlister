import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/pizza-order.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Data from the form when post meth initiated
        String crustSize = req.getParameter("crust-size");
        String crustType = req.getParameter("crust-type");
        String sauce = req.getParameter("sauce");
        String address = req.getParameter("address");
        String[] toppingMeat = req.getParameterValues("meat");
        String[] toppingVeg = req.getParameterValues("veg");
        String[] toppingCheese = req.getParameterValues("cheese");

        // Data from above place in vars to be used outside
        req.setAttribute("crustSize", crustSize);
        req.setAttribute("crustType", crustType);
        req.setAttribute("sauce", sauce);
        req.setAttribute("address", address);
        req.setAttribute("toppingMeat", toppingMeat);
        req.setAttribute("toppingVeg", toppingVeg);
        req.setAttribute("toppingCheese", toppingCheese);


        req.getRequestDispatcher("/pizza-order.jsp").forward(req, resp);

        // Demonstrates the data being used in the console
        System.out.println("Pizza Typ: Size " + crustSize + ", " + crustType + ", " + sauce);
        System.out.println("Meat toppings: " + Arrays.toString(toppingMeat));
        System.out.println("Vegetable toppings: " + Arrays.toString(toppingVeg));
        System.out.println("Cheese toppings: " + Arrays.toString(toppingCheese));
        System.out.println("Delivered to: " + address);
        System.out.println("-------------------------------------------------");


    }
}  //  <--END
