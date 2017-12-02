package kr.co.beliefarm.vo;
import java.io.Serializable;

public enum ProjectStatement implements Serializable {

    now("N", "펀딩중"), finished("F","펀딩종료");
	
	private String code;
	private String name;
	
	private ProjectStatement(String code, String name) {
		this.setCode(code);
		this.setName(name);
	}
	
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public static ProjectStatement findBy(String code) {
		for (ProjectStatement value : values()) {
			if (value.getCode().equals(code)) {
				return value;
			}
		}
		return null;
	}
}
