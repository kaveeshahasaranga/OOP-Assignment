package onlinetourguide;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Tourcontrol {
	
	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	public static boolean insertdata(String tourname,String price,String image,String location,String description) {
		boolean isSuccess=false;
		try {
			
			con=DBConnection.getConnection();
			stmt= con.createStatement();
			
			
			String sql = "insert into tours values(0,'"+tourname+"','"+price+"','"+image+"','"+location+"','"+description+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess =true;
			}
			else{
				isSuccess =false;
				
			}
			}
			catch(Exception e) {
				e.printStackTrace();//print the errors details help to debugging
			}
			return isSuccess;
		}
	
	public static List <Tourmodel> getById (String Id){
		
		int convertedID =Integer.parseInt(Id);
		
		ArrayList <Tourmodel> tours =new ArrayList<>();
		
		try {
			
			con=DBConnection.getConnection();
			stmt= con.createStatement();

			String sql = "select * from tours where id = " + convertedID;
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id =rs.getInt(1);
				String tourname =rs.getString(2);
				String price =rs.getString(3);
				String image =rs.getString(4);
				String location =rs.getString(5);
				String description =rs.getString(6);
				
				Tourmodel bk =new Tourmodel(id,tourname,price,image,location,description);
				tours.add(bk);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return tours;
	}
	
	public static List <Tourmodel> getAllTours(){
		
		ArrayList <Tourmodel> tours =new ArrayList<>();
try {
			
			con=DBConnection.getConnection();
			stmt= con.createStatement();

			String sql = "select * from tours";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id =rs.getInt(1);
				String tourname =rs.getString(2);
				String price =rs.getString(3);
				String image =rs.getString(4);
				String location =rs.getString(5);
				String description =rs.getString(6);
				
				Tourmodel bk =new Tourmodel(id,tourname,price,image,location,description);
				tours.add(bk);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return tours;
	}
	
	//Update Data
	
	public static boolean updatedata(String id,String tourname,String price,String image,String location,String description) {
		
		try {
			//DBConeection
		
			con=DBConnection.getConnection();
			stmt= con.createStatement();
			
			//SQl Query
			String sql="update tours set tourname='"+tourname+"',price='"+price+"',image='"+image+"',location='"+location+"',description='"+description+"'"
					+"where id ='"+id+"'";
			
			int rs =stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess =true;
			}
			else{
				isSuccess =false;
				
			}
			
		

		}
		catch(Exception e) {
			e.printStackTrace();
	}
		return isSuccess;
	}
	
	
	
	
	//Delete
	
	public static boolean deleteData(String id) {
		int convID= Integer.parseInt(id);
		try {
			//DBconnetion
			
			con=DBConnection.getConnection();
			stmt= con.createStatement();
			
			String sql ="delete from tours where id='"+convID+"'";
			int rs =stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess =true;
			}
			else {
				isSuccess =false;
			}}
			catch(Exception e) {
				e.printStackTrace();
				
			}
			return isSuccess;
		}
	}
	
	





