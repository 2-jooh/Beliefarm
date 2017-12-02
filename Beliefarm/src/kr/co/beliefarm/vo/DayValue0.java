package kr.co.beliefarm.vo;

import java.io.Serializable;
import java.sql.Timestamp;

public class DayValue0 implements Serializable {
	private int id;
	private Timestamp registDate;
	private double avgTemp;
	private double avgHumid;
	private double avgPh;
	
	private int projectId;
	
	public DayValue0() {
		super();
	}

	public DayValue0(int id, Timestamp registDate, double avgTemp, double avgHumid, double avgPh, int projectId) {
		super();
		this.id = id;
		this.registDate = registDate;
		this.avgTemp = avgTemp;
		this.avgHumid = avgHumid;
		this.avgPh = avgPh; //추가 
		this.projectId = projectId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Timestamp getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Timestamp registDate) {
		this.registDate = registDate;
	}

	public double getAvgTemp() {
		return avgTemp;
	}

	public void setAvgTemp(double avgTemp) {
		this.avgTemp = avgTemp;
	}

	public double getAvgHumid() {
		return avgHumid;
	}

	public void setAvgHumid(double avgHumid) {
		this.avgHumid = avgHumid;
	}

	public double getAvgPh() {
		return avgPh;
	}

	public void setAvgPh(double avgPh) {
		this.avgPh = avgPh;
	}

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	@Override
	public String toString() {
		return "DayValue [id=" + id + ", registDate=" + registDate + ", avgTemp=" + avgTemp + ", avgHumid=" + avgHumid
				+ ", avgPh=" + avgPh + ", projectId=" + projectId + "]";
	}

	
}
