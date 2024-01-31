package electricity_billing_system_ABis_4_week_projectAddCustomer.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_projectAddCustomer.crud.CustomerCRUD;
import electricity_billing_system_ABis_4_week_projectAddCustomer.dto.Customerr;


@WebServlet("/savecustomer")
public class CustomerController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		int mitterno = Integer.parseInt(req.getParameter("mitterno"));
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		String email = req.getParameter("email");
		Long phone = Long.parseLong(req.getParameter("phone"));
		
		Customerr customer = new Customerr();
		customer.setName(name);
		customer.setMitterno(mitterno);
		customer.setCity(city);
		customer.setState(state);
		customer.setEmail(email);
		customer.setPhone(phone);
		
		CustomerCRUD crud = new CustomerCRUD();
		Customerr customer2=crud.saveCustomer(customer);
		if(customer2!=null) {
			req.setAttribute("List", mitterno);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerMitter.jsp");
			requestDispatcher.forward(req, resp);
		}
	}
}
