package electricity_billing_system_ABis_4_week_projectcustomersignup.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_projectcustomersignup.dao.CustomerDao;
import electricity_billing_system_ABis_4_week_projectcustomersignup.dto.Customer;

@WebServlet("/customersignup")
public class CustomerController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mitterno = Integer.parseInt(req.getParameter("mitterno"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		Customer customer = new Customer();
		customer.setMitterno(mitterno);
		customer.setName(name);
		customer.setEmail(email);
		customer.setPassword(password);
		
		CustomerDao customerDao = new CustomerDao();
		try {
			int count=customerDao.signupCustomer(customer);
			if(count!=0) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("CustomerLogin.html");
				requestDispatcher.forward(req, resp);
			}
			else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
