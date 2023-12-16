package sit.int202.classicmodel.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.classicmodel.entities.Office;
import sit.int202.classicmodel.repositories.OfficeRepository;

import java.io.IOException;

@WebServlet(name = "OfficeInsertServlet", value = "/insert-office")
public class OfficeInsertServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/office_insert.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Office office = new Office();
        String officeCode = request.getParameter("officeCode");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String addressLine1 = request.getParameter("addressLine1");
        String country = request.getParameter("country");
        String postalCode = request.getParameter("postalCode");
        String territory = request.getParameter("territory");

        office.setOfficeCode(officeCode);
        office.setCity(city);
        office.setPhone(phone);
        office.setAddressLine1(addressLine1);
        office.setCountry(country);
        office.setPostalCode(postalCode);
        office.setTerritory(territory);

        OfficeRepository officeRepository = new OfficeRepository();

        if (officeRepository.insert(office)){
            request.setAttribute("successMessage", "Insert office successfully");
        } else {
            request.setAttribute("errorMessage", "Insert office failed");
        }
        doGet(request, response);
    }
}