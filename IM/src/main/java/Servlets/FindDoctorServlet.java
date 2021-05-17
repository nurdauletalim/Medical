package Servlets;

import DAO.DoctorDAO;
import Entity.Doctors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/FindDoctorServlet")
public class FindDoctorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String dep = request.getParameter("dep");

        try {

            if (name != null) {
                List<Doctors> docName = DoctorDAO.findByName(name);
                request.setAttribute("doctors", docName);
                request.getRequestDispatcher("doctor.jsp").forward(request,response);
            }
            if (dep != null) {
                List<Doctors> docDep = DoctorDAO.findByDep(dep);
                request.setAttribute("doctors", docDep);
                request.getRequestDispatcher("doctor.jsp").forward(request,response);
            }
            else {
                response.sendRedirect("AllDoctorsServlet");
            }

    }catch (SQLException|ClassNotFoundException e) {
        System.out.println(e);
    }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
