package electricity_billing_system_ABis_4_week_projectAddCustomer.controller;

import electricity_billing_system_ABis_4_week_projectAddCustomer.crud.CustomerCRUD;

public class CustomerDisplay {
	public static void main(String [] args) {
		CustomerCRUD customerCRUD = new CustomerCRUD();
		String billtype=customerCRUD.displayBillType(2121);
		System.out.println(billtype);
	}
}
