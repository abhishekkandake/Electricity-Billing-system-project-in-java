package electricity_billing_system_ABis_4_week_project_payment.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_project_payment.dao.PayCRUD;

@WebServlet("/sucess")
public class SucessController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mitterno = Integer.parseInt(req.getParameter("mitterno"));
		System.out.println(mitterno);
		String status = req.getParameter("status");
		System.out.println(status);
		String months = req.getParameter("month");
		PayCRUD payCRUD = new PayCRUD();
		try {
			int count=payCRUD.updatePay(status, mitterno,months);
			if(count!=0) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("paymentSucessfFull.html");
				requestDispatcher.forward(req, resp);
			}
			else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("scanner.jsp");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
