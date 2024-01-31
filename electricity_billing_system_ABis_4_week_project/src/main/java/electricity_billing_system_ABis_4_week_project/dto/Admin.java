package electricity_billing_system_ABis_4_week_project.dto;

public class Admin {
	private String name;
	private long phone;
	private String address;
	private String email;
	private String password;
	private String gender;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Admin [name=" + name + ", phone=" + phone + ", address=" + address + ", email=" + email + ", password="
				+ password + ", gender=" + gender + "]";
	}
	
	
}
