package TransportPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TransportController {
	// Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata(String fullname, String email, String phone_number, String pickup_location){
		
		boolean isSuccess = false;
		try {
			//DB CONNECTION CALL
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql = "insert into profile_information values(0,'"+fullname+"','"+email+"','"+phone_number+"','"+pickup_location+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		} catch(Exception e) {
		    e.printStackTrace();
		}

		return isSuccess;
	}
	
	//GetById
	public static List<TransportModel> getById (String Id){
		
		int ConvertedID = Integer.parseInt(Id);
		
		ArrayList <TransportModel> profile_information = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from profile_information where id '"+ConvertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fullname = rs.getString(2);
				String email = rs.getString(3);
				String phone_number = rs.getString(4);
				String pickup_location = rs.getString(5);
				
				TransportModel tm = new TransportModel(id, fullname, email, phone_number, pickup_location);
				profile_information.add(tm);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return profile_information;
	}
	
	//GetAll Data
	public static List<TransportModel> getAllprofile_information(){
		
		ArrayList <TransportModel> profile_informations = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from profile_information";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fullname = rs.getString(2);
				String email = rs.getString(3);
				String phone_number = rs.getString(4);
				String pickup_location = rs.getString(5);
				
				TransportModel tm = new TransportModel(id, fullname, email, phone_number, pickup_location);
				profile_informations.add(tm);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return profile_informations;
		
	}
	
	//Update Data
	public static boolean updatedata(String id, String fullname, String email, String phone_number, String pickup_location) {
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "Update profile_information set fullname = '"+fullname+"',email ='"+email+"', phone_number = '"+phone_number+"', pickup_location ='"+pickup_location+"' "
					+"where id ='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//Delete Data
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id);
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql = "delete from profile_information where id='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}