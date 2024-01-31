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
import electricity_billing_system_ABis_4_week_projectAddCustomer.dto.Customerr;
import electricity_billing_system_ABis_4_week_projectcustomersignup.dao.CustomerDao;
import electricity_billing_system_ABis_4_week_projectcustomersignup.dto.Customer;

@WebServlet("/update")
public class UpdateCustomerController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int mitterno = Integer.parseInt(req.getParameter("mitterno"));
		String name = req.getParameter("name");
		String email =req.getParameter("email");
		String password = req.getParameter("password");
		
		
		String billtype = req.getParameter("billtype");
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		String mitterloc = req.getParameter("mitterloc");
		String mittertype = req.getParameter("mittertype");
		int phasecode = Integer.parseInt(req.getParameter("phasecode"));
		long phone = Long.parseLong(req.getParameter("phone"));
		
		Customerr customerr = new Customerr();
		customerr.setEmail(email);
		customerr.setName(name);
		customerr.setBilltype(billtype);
		customerr.setCity(city);
		customerr.setState(state);
		customerr.setMitterloc(mitterloc);
		customerr.setMittertype(mittertype);
		customerr.setPhasecode(phasecode);
		customerr.setPhone(phone);
		
		CustomerCRUD customerCRUD = new CustomerCRUD();
		customerCRUD.customerUpdate(mitterno, customerr);
		
		Customer customer = new Customer();
		customer.setName(name);
		customer.setEmail(email);
		customer.setPassword(password);
		
		CustomerDao customerDao = new CustomerDao();
		try {
			int count=customerDao.updateCustomer(mitterno, customer);
			
			if(count!=0) {
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("customerhome.html");
				requestDispatcher.forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
