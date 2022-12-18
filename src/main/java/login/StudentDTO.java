package login;

import java.sql.Date;

public class StudentDTO {
	
	private String STU_NO;
	private String STU_NAME;
	private String STU_DEPT;
	private int STU_YEAR;
	private String STU_CLASS;
	private String STU_GENDER;
	private double STU_HEIGHT;
	private double STU_WEIGHT;
	private String STU_STATUS;
	private String REGI_USER;
	private Date REGI_DATE;
	private String UPDT_USER;
	private Date UPDT_DATE;
	
	public String getSTU_NO() {
		return STU_NO;
	}
	public void setSTU_NO(String sTU_NO) {
		STU_NO = sTU_NO;
	}
	public String getSTU_NAME() {
		return STU_NAME;
	}
	public void setSTU_NAME(String sTU_NAME) {
		STU_NAME = sTU_NAME;
	}
	public String getSTU_DEPT() {
		return STU_DEPT;
	}
	public void setSTU_DEPT(String sTU_DEPT) {
		STU_DEPT = sTU_DEPT;
	}
	public int getSTU_YEAR() {
		return STU_YEAR;
	}
	public void setSTU_YEAR(int sTU_YEAR) {
		STU_YEAR = sTU_YEAR;
	}
	public String getSTU_CLASS() {
		return STU_CLASS;
	}
	public void setSTU_CLASS(String sTU_CLASS) {
		STU_CLASS = sTU_CLASS;
	}
	public String getSTU_GENDER() {
		return STU_GENDER;
	}
	public void setSTU_GENDER(String sTU_GENDER) {
		STU_GENDER = sTU_GENDER;
	}
	public double getSTU_HEIGHT() {
		return STU_HEIGHT;
	}
	public void setSTU_HEIGHT(double sTU_HEIGHT) {
		STU_HEIGHT = sTU_HEIGHT;
	}
	public double getSTU_WEIGHT() {
		return STU_WEIGHT;
	}
	public void setSTU_WEIGHT(double sTU_WEIGHT) {
		STU_WEIGHT = sTU_WEIGHT;
	}
	public String getSTU_STATUS() {
		return STU_STATUS;
	}
	public void setSTU_STATUS(String sTU_STATUS) {
		STU_STATUS = sTU_STATUS;
	}
	public String getREGI_USER() {
		return REGI_USER;
	}
	public void setREGI_USER(String rEGI_USER) {
		REGI_USER = rEGI_USER;
	}
	public Date getREGI_DATE() {
		return REGI_DATE;
	}
	public void setREGI_DATE(Date rEGI_DATE) {
		REGI_DATE = rEGI_DATE;
	}
	public String getUPDT_USER() {
		return UPDT_USER;
	}
	public void setUPDT_USER(String uPDT_USER) {
		UPDT_USER = uPDT_USER;
	}
	public Date getUPDT_DATE() {
		return UPDT_DATE;
	}
	public void setUPDT_DATE(Date uPDT_DATE) {
		UPDT_DATE = uPDT_DATE;
	}
}
