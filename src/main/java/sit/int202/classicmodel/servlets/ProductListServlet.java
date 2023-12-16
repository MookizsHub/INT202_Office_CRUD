package sit.int202.classicmodel.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.classicmodel.entities.Product;
import sit.int202.classicmodel.repositories.ProductRepository;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductListServlet", value = "/product-list")
public class ProductListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductRepository productRepository = new ProductRepository(); //make new when have requested
        String pageParam = request.getParameter("page"); // what page want
        String pageSizeParam = request.getParameter("pageSize");// page size
        int page = pageParam == null ? 1 : Integer.parseInt(pageParam); //check if null will start at page1
        int pageSize = pageSizeParam == null ? productRepository.getDefaultPageSize() ://if null use default
                Integer.parseInt(pageSizeParam);
        int itemCount = productRepository.countAll(); // count all and send to view do paging
        int totalPage = itemCount / pageSize + (itemCount % pageSize == 0 ? 0 : 1); //calculate
        List<Product> productList = productRepository.findAll(page, pageSize); //call model
        request.setAttribute("products", productList); //get info and set
        request.setAttribute("page", page);
        request.setAttribute("pageSize", pageSize);
        request.setAttribute("totalPage", totalPage);
        getServletContext().getRequestDispatcher("/product_list.jsp").forward(request, response); // forward to jsp
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}