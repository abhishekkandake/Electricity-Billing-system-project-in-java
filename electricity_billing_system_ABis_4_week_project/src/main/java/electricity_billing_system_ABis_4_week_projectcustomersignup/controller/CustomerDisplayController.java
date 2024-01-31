package electricity_billing_system_ABis_4_week_projectcustomersignup.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_projectAddCustomer.crud.CustomerCRUD;
import electricity_billing_system_ABis_4_week_projectcustomersignup.dao.CustomerDao;
@WebServlet("/view")
public class CustomerDisplayController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CustomerDao customerDao = new CustomerDao();
		CustomerCRUD customerCRUD = new CustomerCRUD();
		int mitterno = Integer.parseInt(req.getParameter("mitterno"));
		try {
			String name = customerDao.displayName(mitterno);
			String email = customerDao.displayEmail(mitterno);
			String password = customerDao.displayPassword(mitterno);
			
			System.out.println(password);
			System.out.println(email);
			System.out.println(name);
			
			String billtype = customerCRUD.displayBillType(mitterno);
			System.out.println(billtype);
			String city = customerCRUD.displayCity(mitterno);
			String state = customerCRUD.displayState(mitterno);
			String mitterloc = customerCRUD.displayMitterloc(mitterno);
			String mittertype = customerCRUD.displayMittertype(mitterno);
			int phasecode = customerCRUD.displayPhaseCode(mitterno);
			long phone = customerCRUD.displayPhone(mitterno);
			System.out.println(billtype);
			System.out.println(email);
			req.setAttribute("List11", mitterno);
			req.setAttribute("List", name);
			req.setAttribute("List2", email);
			req.setAttribute("List3", password);
			req.setAttribute("List4", billtype);
			req.setAttribute("List5", city);
			req.setAttribute("List6", state);
			req.setAttribute("List7", mitterloc);
			req.setAttribute("List8", mittertype);
			req.setAttribute("List9", phasecode);
			req.setAttribute("List10", phone);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerViewInformation.jsp");
			requestDispatcher.forward(req, resp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
