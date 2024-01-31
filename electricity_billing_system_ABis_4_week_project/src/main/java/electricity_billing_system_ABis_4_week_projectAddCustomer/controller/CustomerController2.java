package electricity_billing_system_ABis_4_week_projectAddCustomer.controller;

import java.io.IOException;
import java.util.List;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import electricity_billing_system_ABis_4_week_projectAddCustomer.crud.CustomerCRUD;
import electricity_billing_system_ABis_4_week_projectAddCustomer.dto.Customerr;

@WebServlet("/updateCustomer")
public class CustomerController2 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Scanner scanner = new Scanner(System.in);
		
		int mitterno = Integer.parseInt(req.getParameter("mitterno"));
		String mitterloc = req.getParameter("mitterloc");
		String mittertype= req.getParameter("mittertype");
		int phasecode = Integer.parseInt(req.getParameter("phasecode"));
		String billtype = req.getParameter("billtype");
		
		Customerr customer = new Customerr();
		customer.setMitterloc(mitterloc);
		customer.setMittertype(mittertype);
		customer.setPhasecode(phasecode);
		customer.setBilltype(billtype);
		
		CustomerCRUD customerCRUD = new CustomerCRUD();
		Customerr customer2=customerCRUD.updateCustomer(mitterno, customer);
		if(customer2!=null) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminHome.html");
			requestDispatcher.forward(req, resp);
		}
	}
}
