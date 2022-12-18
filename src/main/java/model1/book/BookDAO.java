package model1.book;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BookDAO extends JDBConnect {
	
	public BookDAO(ServletContext application) {
		super(application);
	}
	
public int selectCount(Map<String, Object> map) {
    	
    	int totalCount = 0; 

        String query = "SELECT COUNT(*) FROM book ";
        if (map.get("searchWord") != null) {
            query += " WHERE " + map.get("searchField") + " "
                   + " LIKE '%" + map.get("searchWord") + "%'";
        }

        try {
            stmt = con.createStatement();    
            rs = stmt.executeQuery(query);  
            rs.next();  
            totalCount = rs.getInt(1);   
        }
        catch (Exception e) {
            System.out.println("도서 숫자를 구하는 중 예외 발생");
            e.printStackTrace();
        }
        return totalCount; 
    }
	
	public List<BookDTO> selectList(Map<String, Object> map) {
		
		List<BookDTO> books = new Vector<BookDTO>();
		
		String query = " SELECT * FROM book "; 
        if (map.get("searchWord") != null) {
            query += " WHERE " + map.get("searchField") + " "
                   + " LIKE '%" + map.get("searchWord") + "%' ";
        }
		/* 정렬 조건이 주어질 경우 추가 
		 query += " ORDER BY ?? DESC "; */
		try {
			psmt = con.prepareStatement(query);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				BookDTO dto = new BookDTO();
				
				dto.setBOOK_CODE(rs.getString("BOOK_CODE"));          
                dto.setBOOK_TITLE(rs.getString("BOOK_TITLE"));       
                dto.setBOOK_AUTHOR(rs.getString("BOOK_AUTHOR")); 
                dto.setBOOK_GENRE(rs.getString("BOOK_GENRE"));   
                dto.setBOOK_STATUS(rs.getString("BOOK_STATUS"));            
                dto.setPUBLISHER(rs.getString("PUBLISHER"));  
                dto.setPUBLISH_DATE(rs.getDate("PUBLISH_DATE"));  
                dto.setREGI_USER(rs.getString("REGI_USER"));  
                dto.setREGI_DATE(rs.getDate("REGI_DATE"));  
                dto.setUPDT_USER(rs.getString("UPDT_USER"));  
                dto.setUPDT_DATE(rs.getDate("UPDT_DATE"));  
                
				books.add(dto);
			}
		}
		catch(Exception e) {
			System.out.println("쿼리 실행중 예외 발생");
		}
		return books;
	}
}
