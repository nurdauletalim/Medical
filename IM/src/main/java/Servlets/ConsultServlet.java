package Servlets;

import DAO.ConsultDAO;
import Entity.Consult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ConsultServlet")
public class ConsultServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("name");
    String txt = request.getParameter("txt");
    Integer userid = Integer.parseInt(request.getParameter("userid"));
    String dep = request.getParameter("dep");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");

        Consult con = new Consult(name,txt,phone,email,userid,dep);
        try {
            ConsultDAO.newCansult(con);
        }catch (SQLException|ClassNotFoundException e){
            System.out.println(e);
        }
        request.getRequestDispatcher("department.jsp").forward(request,response);

    }
}
