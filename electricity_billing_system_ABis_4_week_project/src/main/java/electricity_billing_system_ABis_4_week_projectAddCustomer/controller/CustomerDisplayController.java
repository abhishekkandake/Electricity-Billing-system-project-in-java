package electricity_billing_system_ABis_4_week_projectAddCustomer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_projectAddCustomer.crud.CustomerCRUD;
import electricity_billing_system_ABis_4_week_projectAddCustomer.dto.Customerr;

@WebServlet("/customerDetails")
public class CustomerDisplayController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerCRUD customerCRUD = new CustomerCRUD();
		List<Customerr>customers=customerCRUD.displayAll();
		req.setAttribute("List", customers);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerDetails.jsp");
		requestDispatcher.forward(req, resp);
	}
	
}
