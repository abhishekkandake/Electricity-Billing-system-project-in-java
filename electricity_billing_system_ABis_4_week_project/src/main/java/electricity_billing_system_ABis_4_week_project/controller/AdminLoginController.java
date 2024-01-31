package electricity_billing_system_ABis_4_week_project.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_project.dao.AdminCRUD;
import electricity_billing_system_ABis_4_week_project.dto.Admin;
@WebServlet("/adminlogin")
public class AdminLoginController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		System.out.println(email);
		System.out.println(password);
		
		AdminCRUD adminCRUD = new AdminCRUD();
		try {
			String passworddb=adminCRUD.adminLogin(email);
			if(passworddb.equals(password)) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminHome.html");
				requestDispatcher.forward(req, resp);
			}
			else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("mainLogin.html");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}