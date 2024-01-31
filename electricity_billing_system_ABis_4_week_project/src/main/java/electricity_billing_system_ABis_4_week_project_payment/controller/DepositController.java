package electricity_billing_system_ABis_4_week_project_payment.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_project_payment.dao.PayCRUD;
import electricity_billing_system_ABis_4_week_project_payment.dto.Pay;

@WebServlet("/deposit")
public class DepositController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PayCRUD payCRUD = new PayCRUD();
		try {
			List<Pay> pays=payCRUD.displayAll();
			req.setAttribute("List", pays);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("depositDetails.jsp");
			requestDispatcher.forward(req, resp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
