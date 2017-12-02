package kr.co.beliefarm.vo;
import java.io.Serializable;
import java.sql.Timestamp;

public class Comment implements Serializable{

	private int id;
	private String contents;
	private Timestamp timeStamp;
	
	private int userId;
	private User user;
	private Comment parent;
	private int projectId;
    
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Comment(int id, String contents, Timestamp timeStamp, int userId, User user, Comment parent, int projectId) {
		super();
		this.id = id;
		this.contents = contents;
		this.timeStamp = timeStamp;
		this.userId = userId;
		this.user = user;
		this.parent = parent;
		this.projectId = projectId;
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

	public Timestamp getTimeStamp() {
		return timeStamp;
	}

	public void setTimeStamp(Timestamp timeStamp) {
		this.timeStamp = timeStamp;
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

	public Comment getParent() {
		return parent;
	}

	public void setParent(Comment parent) {
		this.parent = parent;
	}

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	@Override
	public String toString() {
		return "Comment [id=" + id + ", contents=" + contents + ", timeStamp=" + timeStamp + ", userId=" + userId
				+ ", user=" + user + ", parent=" + parent + ", projectId=" + projectId + "]";
	}
	
}
