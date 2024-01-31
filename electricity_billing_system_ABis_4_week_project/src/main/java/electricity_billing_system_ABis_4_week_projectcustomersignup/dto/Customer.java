package electricity_billing_system_ABis_4_week_projectcustomersignup.dto;

public class Customer {
	private int mitterno;
	private String name;
	private String email;
	private String password;
	public int getMitterno() {
		return mitterno;
	}
	public void setMitterno(int mitterno) {
		this.mitterno = mitterno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Customer [mitterno=" + mitterno + ", name=" + name + ", email=" + email + ", password=" + password
				+ "]";
	}
	
	
}
