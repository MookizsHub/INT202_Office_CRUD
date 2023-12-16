package sit.int202.classicmodel.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.classicmodel.repositories.OfficeRepository;

import java.io.IOException;

@WebServlet(name = "OfficeFindServlet", value = "/search-office")
public class OfficeFindServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OfficeRepository officeRepository = new OfficeRepository();
        String find = request.getParameter("find");
        if (!find.isEmpty() ) {
            request.setAttribute("offices", officeRepository.findByCityOrCountry(find));
        }
        getServletContext().getRequestDispatcher("/office_find.jsp").forward(request, response);
    }

    }

 