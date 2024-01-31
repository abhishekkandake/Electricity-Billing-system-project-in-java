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

@WebServlet("/logout")
public class AdminLogout extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminCRUD adminCRUD = new AdminCRUD();
		try {
			boolean res=adminCRUD.logout();
			if(res!=true) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("mainLogin.html");
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
