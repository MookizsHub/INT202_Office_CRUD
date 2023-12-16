package sit.int202.classicmodel.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.classicmodel.repositories.OfficeRepository;

import java.io.IOException;

@WebServlet(name = "OfficeDeleteServlet", value = "/office-delete")
public class OfficeDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String officeCode = request.getParameter("officeCode");
        OfficeRepository officeRepository = new OfficeRepository();
        if (officeRepository.delete(officeCode)){
            request.setAttribute("successMessage", "Delete office successfully");
        }else {
            request.setAttribute("errorMessage", "Delete office failed");
        }
        request.getRequestDispatcher("office-list").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
 