package electricity_billing_system_ABis_4_week_projectcustomersignup.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_projectcustomersignup.dao.CustomerDao;

@WebServlet("/logincustomer")
public class CustomerLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		CustomerDao customerDao = new CustomerDao();
		try {
			String passworddb=customerDao.loginSignup(email);
			if(passworddb.equals(password)) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerhome.html");
				requestDispatcher.forward(req, resp);
			}
			else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("CustomerLogin.html");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
