import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/guess.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int num = Integer.parseInt(req.getParameter("num"));
        int comp = (int) ((Math.random() * (3 - 1)) + 1);

        req.setAttribute("num", num);
        req.setAttribute("comp", comp);

        System.out.println(num + " and " + comp);

        if(num > 3 || num < 1) {
            System.out.println("out of bonds");
            resp.sendRedirect("/guess");
        } else if(num == comp) {
            System.out.println("you win");
            resp.sendRedirect("/correct" );
        }
        else {
            System.out.println("fail");
            resp.sendRedirect("/incorrect");
        }

    }
}
