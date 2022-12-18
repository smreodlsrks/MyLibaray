package login;

import javax.servlet.ServletContext;
import common.JDBConnect;

public class LoginDAO extends JDBConnect {
	
    public LoginDAO(ServletContext application) {
        super(application);
    }

    public LoginDTO getLoginDTO(String uid, String upass) {
        
    	LoginDTO dto = new LoginDTO();
    	String query = "SELECT * FROM stu_login WHERE STU_NO=? AND password=?"; 
        
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, uid);     
            psmt.setString(2, upass);  
            rs = psmt.executeQuery();  

            if (rs.next()) {
                dto.setSTU_NO(rs.getString(1));
                dto.setPassword(rs.getString(2));
                dto.setEmail(rs.getString(3));
                dto.setREGI_USER(rs.getString(4));
                dto.setREGI_DATE(rs.getDate(5));
                dto.setUPDT_USER(rs.getString(6));
                dto.setUPDT_DATE(rs.getDate(7));
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return dto; 
    }
    
    public int stNoCheck(String STU_NO) {
    	int result = 0;    	
    	
        try {
            String query = "SELECT COUNT(*) FROM STUDENT WHERE STU_NO=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, STU_NO);
            rs = psmt.executeQuery();
            System.out.println("실행되는 쿼리"+ query);
            System.out.println("stNoCheck 쿼리 실행됨");
            rs.next();
            result = rs.getInt(1); 
            }      
        catch (Exception e) {
            System.out.println("학번 조회 중 예외 발생");
            e.printStackTrace();
        }
        return result;
    }
    
    public StudentDTO getInfo(String STU_NO) {
    	
    	StudentDTO dto = new StudentDTO();
    	
        try {
            String query = "SELECT * FROM STUDENT WHERE STU_NO=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, STU_NO);
            rs = psmt.executeQuery();
            
            if (rs.next()) {
                dto.setSTU_NO(rs.getString(1));                
                dto.setSTU_NAME(rs.getString(2));
                dto.setSTU_DEPT(rs.getString(3));
                dto.setSTU_YEAR(rs.getInt(4));
                dto.setSTU_CLASS(rs.getString(5));
                dto.setSTU_GENDER(rs.getString(6));
                dto.setSTU_HEIGHT(rs.getDouble(7));
                dto.setSTU_WEIGHT(rs.getDouble(8));
                dto.setSTU_STATUS(rs.getString(9));
                dto.setREGI_USER(rs.getString(10));
                dto.setREGI_DATE(rs.getDate(11));
                dto.setUPDT_USER(rs.getString(12));
                dto.setUPDT_DATE(rs.getDate(13));
            } 
        }      
        catch (Exception e) {
            System.out.println("학번 조회 중1 예외 발생");
            e.printStackTrace();
        }
        return dto;
    }
}


