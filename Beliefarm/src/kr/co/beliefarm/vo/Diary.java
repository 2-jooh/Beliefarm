package kr.co.beliefarm.vo;
import java.io.Serializable;
import java.sql.Timestamp;

public class Diary implements Serializable {
	
	private int id;
	private String image;
	private String contents;
	private Timestamp registDate;
	
	private int projectId;
	
	public Diary() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Diary(int id, String image, String contents, Timestamp registDate, int projectId) {
		super();
		this.id = id;
		this.image = image;
		this.contents = contents;
		this.registDate = registDate;
		this.projectId = projectId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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

	@Override
	public String toString() {
		return "Diary [id=" + id + ", image=" + image + ", contents=" + contents + ", registDate=" + registDate
				+ ", projectId=" + projectId + "]";
	}
	
	
	
}
