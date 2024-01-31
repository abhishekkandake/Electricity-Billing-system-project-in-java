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
import electricity_billing_system_ABis_4_week_project_payment.dto.Pay;

@WebServlet("/pay")
public class PayController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mitterno = Integer.parseInt(req.getParameter("mitterno"));
		String month = req.getParameter("month");
		
		PayCRUD payCRUD = new PayCRUD();
		try {
			String name=payCRUD.displayName(mitterno, month);
			int units = payCRUD.displayUnits(mitterno, month);
			int total = payCRUD.displayTotal(mitterno, month);
			String status = payCRUD.displayStatus(mitterno, month);
			if(name!=null) {
				System.out.println(name);
				System.out.println(units);
				System.out.println(total);
				System.out.println(status);
				req.setAttribute("List",name);
				req.setAttribute("List2", total);
				req.setAttribute("List3", mitterno);
				req.setAttribute("List4", month);
				req.setAttribute("List5", units);
				req.setAttribute("List6", status);
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("electricPayBill1.jsp");
				requestDispatcher.forward(req, resp);
			}
			else {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("ElectricityPayBill.jsp");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
