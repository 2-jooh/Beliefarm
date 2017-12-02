package kr.co.beliefarm.vo;

import java.io.Serializable;
import java.sql.Timestamp;

public class Review implements Serializable {

	private int id;
	private String contents;
	private Timestamp registDate;
	
	private int projectId;
	private int userId;
	private User user;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Review(int id, String contents, Timestamp registDate, int projectId, int userId, User user) {
		super();
		this.id = id;
		this.contents = contents;
		this.registDate = registDate;
		this.projectId = projectId;
		this.userId = userId;
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Timestamp getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Timestamp registDate) {
		this.registDate = registDate;
	}

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
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
		return "Review [id=" + id + ", contents=" + contents + ", registDate=" + registDate + ", projectId=" + projectId
				+ ", userId=" + userId + ", user=" + user + "]";
	}

	
}
