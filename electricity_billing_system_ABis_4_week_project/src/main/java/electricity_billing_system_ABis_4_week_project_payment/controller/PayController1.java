package electricity_billing_system_ABis_4_week_project_payment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/paybill")
public class PayController1 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mitterno = Integer.parseInt(req.getParameter("mitterno"));
		System.out.println("mitterno = "+mitterno);
		String month = req.getParameter("month");
		if(mitterno!=0) {
			req.setAttribute("List", mitterno);
			req.setAttribute("List2", month);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("scanner.jsp");
			requestDispatcher.forward(req, resp);
		}
		else {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerhome.html");
			requestDispatcher.forward(req, resp);
		}
	}
}
