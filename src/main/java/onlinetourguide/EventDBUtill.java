package onlinetourguide;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;






public class EventDBUtill {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
public static List<EventMode> validate(String username, String password) {
	ArrayList<EventMode> even = new ArrayList<>();
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from admin where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return even;
	}

	
	
	
	public static boolean insertdata(String eventname,String location,String date,String description ) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql =  "INSERT INTO upcomingevent (Id, eventname, location, date, description) VALUES (0, '"
				    + eventname + "', '"
				    + location + "', '"
				    + date + "', '"
				    + description + "');";

			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<EventMode> getById(String Id) {
	    int convertedId = Integer.parseInt(Id);
	    ArrayList<EventMode> even = new ArrayList<>();
	    
	    try {
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        String sql = "select * from upcomingevent where id = '" + convertedId + "'";
	        
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String eventname = rs.getString(2);
	            String location = rs.getString(3);
	            String date = rs.getString(4);
	            String description = rs.getString(5);
	            
	            EventMode c = new EventMode(id, eventname, location, date, description);
	            even.add(c);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return even;
	}
	
	public static List<EventMode> getallEventsDetails() {
	    ArrayList<EventMode> even = new ArrayList<>();
	    
	    try {
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM upcomingevent";
	        
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String eventname = rs.getString(2);
	            String location = rs.getString(3);
	            String date = rs.getString(4);
	            String description = rs.getString(5);
	            
	            EventMode c = new EventMode(id, eventname, location, date, description);
	            even.add(c);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return even;
	}
	
	public static boolean update(String id,String eventname,String location,String date,String description) {
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE upcomingevent " +
		             "SET eventname = '" + eventname + "', " +
		             "location = '" + location + "', " +
		             "date = '" + date + "', " +
		             "description = '" + description + "' " +
		             "WHERE id = '" + id + "'";

			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("wrrong ");
		}
		return isSuccess;
	
	}
	public static boolean deleteEvent(String id) {
	    int convID = Integer.parseInt(id);
	    

	    try {
	        // DB connection
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        String sql = "delete from upcomingevent where id='" + convID + "'";
	        int rs = stmt.executeUpdate(sql);
	        
	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}
	
	
	

}
