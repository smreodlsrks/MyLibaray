package model1.book;

import java.sql.Date;

public class BookDTO {
	
	private String BOOK_CODE;
    private String BOOK_TITLE;
    private String BOOK_AUTHOR;
    private String BOOK_GENRE;
    private String BOOK_STATUS;
    private String PUBLISHER;
    private Date PUBLISH_DATE;
    private String REGI_USER;
    private Date REGI_DATE;
    private String UPDT_USER;
    private Date UPDT_DATE;
    
	public String getBOOK_CODE() {
		return BOOK_CODE;
	}
	public void setBOOK_CODE(String bOOK_CODE) {
		BOOK_CODE = bOOK_CODE;
	}
	public String getBOOK_TITLE() {
		return BOOK_TITLE;
	}
	public void setBOOK_TITLE(String bOOK_TITLE) {
		BOOK_TITLE = bOOK_TITLE;
	}
	public String getBOOK_AUTHOR() {
		return BOOK_AUTHOR;
	}
	public void setBOOK_AUTHOR(String bOOK_AUTHOR) {
		BOOK_AUTHOR = bOOK_AUTHOR;
	}
	public String getBOOK_GENRE() {
		return BOOK_GENRE;
	}
	public void setBOOK_GENRE(String bOOK_GENRE) {
		BOOK_GENRE = bOOK_GENRE;
	}
	public String getBOOK_STATUS() {
		return BOOK_STATUS;
	}
	public void setBOOK_STATUS(String bOOK_STATUS) {
		BOOK_STATUS = bOOK_STATUS;
	}
	public String getPUBLISHER() {
		return PUBLISHER;
	}
	public void setPUBLISHER(String pUBLISHER) {
		PUBLISHER = pUBLISHER;
	}
	public Date getPUBLISH_DATE() {
		return PUBLISH_DATE;
	}
	public void setPUBLISH_DATE(Date pUBLISH_DATE) {
		PUBLISH_DATE = pUBLISH_DATE;
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