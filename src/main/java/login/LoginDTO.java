package login;

import java.sql.Date;

public class LoginDTO {
	
    private String STU_NO;
    private String password;
    private String email;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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



