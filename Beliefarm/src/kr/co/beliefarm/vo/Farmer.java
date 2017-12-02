package kr.co.beliefarm.vo;
import java.io.Serializable;

public class Farmer implements Serializable {

	private int id;
	private String farmName;
	private String introduce;
	private String farmAddress;
	private String crop;
	
	private int userId;
	private User user; //farmer select할때 User정보 join해서 가져오기위해 user객체 타입의 변수 선언 
	
	public Farmer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Farmer(int id, String farmName, String introduce, String farmAddress, String crop, int userId, User user) {
		super();
		this.id = id;
		this.farmName = farmName;
		this.introduce = introduce;
		this.farmAddress = farmAddress;
		this.crop = crop;
		this.userId = userId;
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFarmName() {
		return farmName;
	}

	public void setFarmName(String farmName) {
		this.farmName = farmName;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getFarmAddress() {
		return farmAddress;
	}

	public void setFarmAddress(String farmAddress) {
		this.farmAddress = farmAddress;
	}

	public String getCrop() {
		return crop;
	}

	public void setCrop(String crop) {
		this.crop = crop;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Farmer [id=" + id + ", farmName=" + farmName + ", introduce=" + introduce + ", farmAddress="
				+ farmAddress + ", crop=" + crop + ", userId=" + userId + ", user=" + user + "]";
	}

	
}
