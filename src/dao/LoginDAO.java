package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBUtil;

public class LoginDAO {
	
	public static List<mini> getAllProducts(String username)
	{

	List<mini> productList = new ArrayList<mini>();
	try
	{
		Connection conn = DBUtil.getConnection();
		Statement st= conn.createStatement();
		PreparedStatement ps= conn.prepareStatement("SELECT * FROM mini WHERE username = ?");
		ps.setString(1, username);
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			mini product = new mini(rs.getInt("QUESTION_NO"),rs.getString("QUESTION"),rs.getString("OPTION1"),rs.getString("OPTION2"),rs.getString("OPTION3"),rs.getString("OPTION4"),rs.getInt("answer"));
			
			productList.add(product);
		}
		
		DBUtil.closeConnection(conn);
		
	}
	
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return productList;
}
	
	public static void updateMarks(String name,int marks)
	{
		
		
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE quiz_table SET  marks=? WHERE name=?");
			ps.setInt(1, marks);
			ps.setString(2, name);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static void updateSubject(String name,String subject)
	{
		
		
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE quiz_table SET  subject=? WHERE name=?");
			ps.setString(1,subject);
			ps.setString(2, name);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
}



