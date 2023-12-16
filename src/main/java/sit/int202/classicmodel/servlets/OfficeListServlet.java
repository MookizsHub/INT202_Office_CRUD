package sit.int202.classicmodel.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.classicmodel.repositories.OfficeRepository;

import java.io.IOException;

@WebServlet(name = "OfficeListServlet", value = "/office-list")
public class OfficeListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        OfficeRepository officeRepository = new OfficeRepository();
        session.setAttribute("offices", officeRepository.findAll());
        request.getRequestDispatcher("/office_list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
 