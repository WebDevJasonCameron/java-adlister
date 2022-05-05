package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // Get Data from Form
        String un = request.getParameter("r-username");
        String em = request.getParameter("r-email");
        String pw = request.getParameter("r-password");

        // Checks
        boolean goodReg = un.isEmpty() || em.isEmpty() || pw.isEmpty();

        if(goodReg) {
            response.sendRedirect("/register");
            return;
        }

        // Add user to DB
        User user = new User(un, em, pw);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");

    }
}
