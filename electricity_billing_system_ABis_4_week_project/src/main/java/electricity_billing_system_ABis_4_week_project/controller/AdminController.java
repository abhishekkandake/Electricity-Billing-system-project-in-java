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

@WebServlet("/adminsignup")
public class AdminController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		long phone = Long.parseLong(req.getParameter("phone"));
		String address = req.getParameter("address");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String gender = req.getParameter("gender");
		
		Admin admin = new Admin();
		admin.setName(name);
		admin.setPhone(phone);
		admin.setAddress(address);
		admin.setEmail(email);
		admin.setPassword(password);
		admin.setGender(gender);
		AdminCRUD adminCRUD = new AdminCRUD();
		try {
			int count=adminCRUD.signupAdmin(admin);
			if(count!=0) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("mainLogin.html");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
