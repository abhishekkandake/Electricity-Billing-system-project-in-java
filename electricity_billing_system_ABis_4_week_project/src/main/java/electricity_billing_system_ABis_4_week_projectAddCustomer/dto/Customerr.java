package electricity_billing_system_ABis_4_week_projectAddCustomer.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customerr {
	private String name;
	@Id
	private int mitterno;
	private String city;
	private String state;
	private String email;
	private long phone;
	private String mitterloc;
	private String mittertype;
	private int phasecode;
	private String billtype;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMitterno() {
		return mitterno;
	}
	public void setMitterno(int mitterno) {
		this.mitterno = mitterno;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getMitterloc() {
		return mitterloc;
	}
	public void setMitterloc(String mitterloc) {
		this.mitterloc = mitterloc;
	}
	public String getMittertype() {
		return mittertype;
	}
	public void setMittertype(String mittertype) {
		this.mittertype = mittertype;
	}
	public int getPhasecode() {
		return phasecode;
	}
	public void setPhasecode(int phasecode) {
		this.phasecode = phasecode;
	}
	public String getBilltype() {
		return billtype;
	}
	public void setBilltype(String billtype) {
		this.billtype = billtype;
	}
	@Override
	public String toString() {
		return "Customer [name=" + name + ", mitterno=" + mitterno + ", city=" + city + ", state=" + state + ", email="
				+ email + ", phone=" + phone + ", mitterloc=" + mitterloc + ", mittertype=" + mittertype
				+ ", phasecode=" + phasecode + ", billtype=" + billtype + "]";
	}
	
}
