package onlinetourguide;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class loginDBUtil {
	
	public static List<geust>validate(String username,String password){
		
		ArrayList<geust> geu = new ArrayList<>();
		
		 String URL = "jdbc:mysql://localhost:3306/online_tour_guide";
		 String USERNAME = "root";
		 String PASSWORD = "1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			Statement stmt = con.createStatement();
			String sql = "select * form customer where username+'"+username+"' and password '"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String uname = rs.getString(5);
				String geustpassword = rs.getString(6);
				
				geust g = new geust(id,name,email,phone,uname,geustpassword);
				geu.add(g);
				
			}
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		
		return geu;
		
	}

}
