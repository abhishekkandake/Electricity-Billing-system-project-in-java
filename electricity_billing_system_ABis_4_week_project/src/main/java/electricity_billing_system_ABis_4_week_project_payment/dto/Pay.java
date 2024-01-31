package electricity_billing_system_ABis_4_week_project_payment.dto;

public class Pay {
	private int mitterno;
	private String name;
	private String month;
	private int units;
	private int total;
	private String status;
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
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getUnits() {
		return units;
	}
	public void setUnits(int units) {
		this.units = units;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Pay [mitterno=" + mitterno + ", name=" + name + ", month=" + month + ", units=" + units + ", total="
				+ total + ", status=" + status + "]";
	}
	
	
}
