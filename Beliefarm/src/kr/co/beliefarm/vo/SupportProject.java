package kr.co.beliefarm.vo;

import java.io.Serializable;

public class SupportProject implements Serializable{

	private int id;
	private int quantity;
	private String address;
	private int rewardId;
	
	private int userId;
	private User user;
	
	public SupportProject() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SupportProject(int id, int quantity, String address, int rewardId, int userId, User user) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.address = address;
		this.rewardId = rewardId;
		this.userId = userId;
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getquantity() {
		return quantity;
	}

	public void setquantity(int quantity) {
		this.quantity = quantity;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getRewardId() {
		return rewardId;
	}

	public void setRewardId(int rewardId) {
		this.rewardId = rewardId;
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
		return "SupportProject [id=" + id + ", quantity=" + quantity + ", address=" + address + ", rewardId=" + rewardId
				+ ", userId=" + userId + ", user=" + user + "]";
	}
	
	
}
