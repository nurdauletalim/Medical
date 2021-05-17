package Servlets;

import DAO.DoctorDAO;
import Entity.Doctors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/AllDoctorsServlet")
public class AllDoctorsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            List<Doctors> doctors =  DoctorDAO.findAll();
            request.setAttribute("doctors",doctors);

            request.getRequestDispatcher("doctor.jsp").forward(request,response);
        }catch (SQLException|ClassNotFoundException e){
            System.out.println(e);
        }
        }
}
