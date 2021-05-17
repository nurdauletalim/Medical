package Servlets;

import DAO.UserDAO;
import Entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        Integer iin = Integer.parseInt(request.getParameter("iin"));
        String password = request.getParameter("password");
        String city = request.getParameter("city");
        String address = request.getParameter("address");

        User user = new User(name,email,iin,password,city,address);

        try {
            UserDAO.register(user);
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            request.getRequestDispatcher("index.jsp").forward(request,response);

        } catch (SQLException|ClassNotFoundException e){
            System.out.println(e);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
