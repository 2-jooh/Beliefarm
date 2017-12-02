package kr.co.beliefarm.vo;

import java.io.Serializable;

public enum RewardStatement implements Serializable {
	now("N", "판매중"), soldOut("S", "판매종료");
	
		private String code;
		private String name;
		
		private RewardStatement(String code, String name) {
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

		public static RewardStatement findBy(String code) {
			for (RewardStatement value : values()) {
				if (value.getCode().equals(code)) {
					return value;
				}
			}
			return null;
		}
}
