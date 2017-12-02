package kr.co.beliefarm.vo;

import java.io.Serializable;
import java.util.Date;

public class DayValue implements Serializable {
	

	private int id;
	private int estmCount;
	private Date registDate;
	private double avgTemp;
	private double avgHumid;
	private double avgPh;
	private double avgWater;
	private int projectId;
	
	public DayValue() {
		super();
	}

	public DayValue(int id, Date registDate, double avgTemp, double avgHumid, double avgPh, int projectId) {
		super();
		this.id = id;
		this.registDate = registDate;
		this.avgTemp = avgTemp;
		this.avgHumid = avgHumid;
		this.avgPh = avgPh; //추가 
		this.projectId = projectId;
	}
	
	public double getAvgPh() {
		return avgPh;
	}

	public void setAvgPh(double avgPh) {
		this.avgPh = avgPh;
	}
	public int getEstmCount() {
		return estmCount;
	}

	public void setEstmCount(int estmCount) {
		this.estmCount = estmCount;
	}

	public double getAvgWater() {
		return avgWater;
	}

	public void setAvgWater(double avgWater) {
		this.avgWater = avgWater;
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Date registDate) {
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


	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	@Override
	public String toString() {
		return "DayValue [id=" + id + ", estmCount=" + estmCount + ", registDate=" + registDate + ", avgTemp=" + avgTemp
				+ ", avgHumid=" + avgHumid + ", avgPh=" + avgPh + ", avgWater=" + avgWater + ", projectId=" + projectId
				+ "]";
	}

	

	
}
