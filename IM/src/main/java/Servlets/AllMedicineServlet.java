package Servlets;

import DAO.MedicineDAO;
import Entity.Medicine;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/AllMedicineServlet")
public class AllMedicineServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Medicine> medicines = MedicineDAO.getAll();
        request.setAttribute("medicines",medicines);
        request.getRequestDispatcher("pricing.jsp").forward(request,response);
    }
}
