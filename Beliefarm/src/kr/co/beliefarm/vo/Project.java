package kr.co.beliefarm.vo;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class Project implements Serializable {

	private int id;
	private String title; //제목 
	private String image; // 대표이미지 - 메인페이지에 이 사진 나옴 
	private String simpleInfo; //간단소개 
	private ProjectStatement prjStatement;
	
	private int goal; //목표금액
	private Timestamp startDate;
	private Timestamp endDate;
	private int rest; //남은 일수 - 컨트롤러에서 남은일수 계산해서 SET  
	private List<Reward> rewards; //컨트롤러에서 리워드 테이블에서 가져와서 SET
	
	private String story; // 정보
	private List<Diary> diaries; //컨트롤러에서 다이어리 테이블에서 가져와서 SET
	private double fineTemp; //적정 온도 
	private double fineHumid; //적정 습도
	private int finePh; //적정 PH  - 추가 
					    // 0 : none,  1 : 강한산성,  2 : 약산성,  3 : 매우약산성,   4 : 약알칼리성  


	private List<Comment> comments;
	private List<Review> reviewes;
	
	private String QR;
	private String bank;
	private String account;
	private String acntHolder;
	
	private int farmerId;
	private Farmer farmer; //농부 정보 - join 
	
	//추가 ---DB에 저장안하고 controller단에서 계산해서 SET
	private int investors; //투자자 수 
	private int collectedMoney; //모인 금액 
	private float achievedRate; //달성률 
	
	public Project() {
		super();
	}

	public Project(int id, String title, String image, String simpleInfo, ProjectStatement prjStatement, int goal,
			int rest, Timestamp startDate, Timestamp endDate, List<Reward> rewards, String story, List<Diary> diaries,
			double fineTemp, double fineHumid, int finePh, List<Comment> comments, List<Review> reviewes, String QR,
			String bank, String account, String acntHolder, int farmerId, Farmer farmer, int investors,
			int collectedMoney, float achievedRate) {
		super();
		this.id = id;
		this.title = title;
		this.image = image;
		this.simpleInfo = simpleInfo;
		this.prjStatement = prjStatement;
		this.goal = goal;
		this.rest = rest;
		this.startDate = startDate;
		this.endDate = endDate;
		this.rewards = rewards;
		this.story = story;
		this.diaries = diaries;
		this.fineTemp = fineTemp;
		this.fineHumid = fineHumid;
		this.finePh = finePh;
		this.comments = comments;
		this.reviewes = reviewes;
		this.QR = QR;
		this.bank = bank;
		this.account = account;
		this.acntHolder = acntHolder;
		this.farmerId = farmerId;
		this.farmer = farmer;
		this.investors = investors;
		this.collectedMoney = collectedMoney;
		this.achievedRate = achievedRate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getSimpleInfo() {
		return simpleInfo;
	}

	public void setSimpleInfo(String simpleInfo) {
		this.simpleInfo = simpleInfo;
	}

	public ProjectStatement getPrjStatement() {
		return prjStatement;
	}

	public void setPrjStatement(ProjectStatement prjStatement) {
		this.prjStatement = prjStatement;
	}

	public int getGoal() {
		return goal;
	}

	public void setGoal(int goal) {
		this.goal = goal;
	}

	public int getRest() {
		return rest;
	}

	public void setRest(int rest) {
		this.rest = rest;
	}

	public Timestamp getStartDate() {
		return startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getEndDate() {
		return endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	public List<Reward> getRewards() {
		return rewards;
	}

	public void setRewards(List<Reward> rewards) {
		this.rewards = rewards;
	}

	public String getStory() {
		return story;
	}

	public void setStory(String story) {
		this.story = story;
	}

	public List<Diary> getDiaries() {
		return diaries;
	}

	public void setDiaries(List<Diary> diaries) {
		this.diaries = diaries;
	}

	public double getFineTemp() {
		return fineTemp;
	}

	public void setFineTemp(double fineTemp) {
		this.fineTemp = fineTemp;
	}

	public double getFineHumid() {
		return fineHumid;
	}

	public void setFineHumid(double fineHumid) {
		this.fineHumid = fineHumid;
	}

	public int getFinePh() {
		return finePh;
	}

	public void setFinePh(int finePh) {
		this.finePh = finePh;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public List<Review> getReviewes() {
		return reviewes;
	}

	public void setReviewes(List<Review> reviewes) {
		this.reviewes = reviewes;
	}

	public String getQR() {
		return QR;
	}

	public void setQR(String QR) {
		this.QR = QR;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getAcntHolder() {
		return acntHolder;
	}

	public void setAcntHolder(String acntHolder) {
		this.acntHolder = acntHolder;
	}

	public int getFarmerId() {
		return farmerId;
	}

	public void setFarmerId(int farmerId) {
		this.farmerId = farmerId;
	}

	public Farmer getFarmer() {
		return farmer;
	}

	public void setFarmer(Farmer farmer) {
		this.farmer = farmer;
	}

	public int getInvestors() {
		return investors;
	}

	public void setInvestors(int investors) {
		this.investors = investors;
	}

	public int getCollectedMoney() {
		return collectedMoney;
	}

	public void setCollectedMoney(int collectedMoney) {
		this.collectedMoney = collectedMoney;
	}

	public float getAchievedRate() {
		return achievedRate;
	}

	public void setAchievedRate(float achievedRate) {
		this.achievedRate = achievedRate;
	}

	@Override
	public String toString() {
		return "Project [id=" + id + ", title=" + title + ", image=" + image + ", simpleInfo=" + simpleInfo
				+ ", prjStatement=" + prjStatement + ", goal=" + goal + ", rest=" + rest + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", rewards=" + rewards + ", story=" + story + ", diaries=" + diaries
				+ ", fineTemp=" + fineTemp + ", fineHumid=" + fineHumid + ", finePh=" + finePh + ", comments="
				+ comments + ", reviewes=" + reviewes + ", QR=" + QR + ", bank=" + bank + ", account=" + account
				+ ", acntHolder=" + acntHolder + ", farmerId=" + farmerId + ", farmer=" + farmer + ", investors="
				+ investors + ", collectedMoney=" + collectedMoney + ", achievedRate=" + achievedRate + "]";
	}
	
	
}
