package kr.co.beliefarm.vo;

import java.io.Serializable;
import java.util.List;

public class Reward implements Serializable {

	private int id;
	private String name;
	private int price;
	private int number;
	private String detail;
	private String deliveryDate;
	private RewardStatement rewardStatement;
	private List<SupportProject> supportProjects;
	private int supportProjectsNum; //추가 - 주현 
	
	private int projectId;

	public Reward() {
		super();
	}

	public Reward(int id, String name, int price, int number, String detail, String deliveryDate,
			RewardStatement rewardStatement, List<SupportProject> supportProjects, int supportProjectsNum,
			int projectId) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.number = number;
		this.detail = detail;
		this.deliveryDate = deliveryDate;
		this.rewardStatement = rewardStatement;
		this.supportProjects = supportProjects;
		this.supportProjectsNum = supportProjectsNum;
		this.projectId = projectId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public RewardStatement getRewardStatement() {
		return rewardStatement;
	}

	public void setRewardStatement(RewardStatement rewardStatement) {
		this.rewardStatement = rewardStatement;
	}

	public List<SupportProject> getSupportProjects() {
		return supportProjects;
	}

	public void setSupportProjects(List<SupportProject> supportProjects) {
		this.supportProjects = supportProjects;
	}

	public int getSupportProjectsNum() {
		return supportProjectsNum;
	}

	public void setSupportProjectsNum(int supportProjectsNum) {
		this.supportProjectsNum = supportProjectsNum;
	}

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	@Override
	public String toString() {
		return "Reward [id=" + id + ", name=" + name + ", price=" + price + ", number=" + number + ", detail=" + detail
				+ ", deliveryDate=" + deliveryDate + ", rewardStatement=" + rewardStatement + ", supportProjects="
				+ supportProjects + ", supportProjectsNum=" + supportProjectsNum + ", projectId=" + projectId + "]";
	}
	
}
