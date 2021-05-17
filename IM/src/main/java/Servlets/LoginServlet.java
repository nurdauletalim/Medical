package Servlets;

import DAO.UserDAO;
import Entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            User user = UserDAO.login(email, password);
            if (user != null){
                HttpSession session = request.getSession();
                session.setAttribute("user",user);
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }
            else {
                System.out.println("User not found!!");
                response.sendRedirect("login.jsp");
            }

        }catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
        }

    }

}
