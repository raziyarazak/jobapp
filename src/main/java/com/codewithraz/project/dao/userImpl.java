package com.codewithraz.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.codewithraz.project.dao.dbutils.DbDriverManager;
import com.codewithraz.project.dao.dbutils.DbDriverManagerFactory;
import com.codewithraz.project.model.user;

public class userImpl implements userManage {

	public userImpl() {
		// TODO Auto-generated constructor stub
	}

	private Connection getConnection() throws ClassNotFoundException, SQLException {
		DbDriverManagerFactory driverFactory = new DbDriverManagerFactory();
		DbDriverManager driverManager = driverFactory.getDbDriver("MySQL");
		
		return driverManager.getConnection();
	}
	@Override
	public boolean adduser(user user) throws SQLException, ClassNotFoundException {
Connection connection = getConnection();
		
		String query ="INSERT INTO  user_details (name, password, email, contact_no,job_catogory,country,gender,role) VALUES(?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setString(1,user.getuName());
		ps.setString(2,user.getuPassword());
		ps.setString(3,user.getuEmail());
		ps.setInt(4,(int)user.getuContactNo());
		ps.setString(5,user.getuCatagory());
		ps.setString(6,user.getuCountry());
		ps.setString(7, user.getuGender());
		ps.setString(8, user.getuRole());
		boolean result = false;
		
		if(ps.executeUpdate()>0)
			result = true;
				
		ps.close();
		connection.close();
		return result;
	}

	@Override
	public boolean edituser(user user) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		
		String query ="UPDATE user_details SET name=?, password=?, email=?, contact_no=?, job_category=?, country=?, gender=? ,role=?  WHERE id_no=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setString(1,user.getuName());
		ps.setString(2,user.getuPassword());
		ps.setString(3,user.getuEmail());
		ps.setInt(4,(int)user.getuContactNo());
		ps.setString(5,user.getuCatagory());
		ps.setString(6,user.getuCountry());
		ps.setString(7, user.getuGender());
		ps.setString(8, user.getuRole());
		ps.setInt(9,(int)user.getUid());
		boolean result = false;
		
		if(ps.executeUpdate()>0)
			result = true;
				
		ps.close();
		connection.close();
		return result;
	}

	@Override
	public boolean deleteuser(int userid) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		String query = "DELETE FROM user_details WHERE id_no=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setInt(1, userid);
		
		boolean result = false;
		if(ps.executeUpdate() > 0) {
			result = true;
		}
		
		ps.close();
		connection.close();
		
		return result;
	}

	@Override
	public user fetchSingleRecord(String cat) throws SQLException, ClassNotFoundException {
		Connection connection = getConnection();
		
		String query ="SELECT id_no,name,country,email,contact_no,job_category FROM user_details WHERE job_catogory=? AND role IN ('consultant')";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setString(1, cat);
		
		ResultSet rs = ps.executeQuery();
		
		user user = new user();
		
		while(rs.next()) {
			user.setUid(rs.getInt("id_no"));
			user.setuName(rs.getString("name"));
			user.setuEmail(rs.getString("email"));
			user.setuContactNo(rs.getInt("contact_no"));
			user.setuCatagory(rs.getString("job_category"));
			user.setuCountry(rs.getString("country"));
			
			
		}
		
		
		ps.close();
		connection.close();		
		
		return user;
	}

	@Override
	public List<user> fetchAllRecords() throws SQLException, ClassNotFoundException {
Connection connection = getConnection();
		
		String query = "SELECT id_no,name,country,email,contact_no,job_category FROM user_details WHERE job_catogory=? AND role IN ('consultant')";
		Statement st = connection.createStatement();
		
		List<user> userList = new ArrayList<user>();
		
		ResultSet rs = st.executeQuery(query);
		while(rs.next()) {
			
			user user = new user();
			user.setUid(rs.getInt("id_no"));
			user.setuName(rs.getString("name"));
			user.setuEmail(rs.getString("email"));
			user.setuContactNo(rs.getInt("contact_no"));
			user.setuCatagory(rs.getString("job_category"));
			user.setuCountry(rs.getString("country"));
	
			
			userList.add(user);
		}
		
		st.close();
		connection.close();
		
		return userList;
	}
	/*public user fetchcatogary(user usercat) {
		Connection connection = getConnection();
		String query = "SELECT * FROM profile_details WHERE job_category=?";
		
		PreparedStatement ps = connection.prepareStatement(query);
		ps.setCatagory(1,usercat);
		
		ResultSet rs = ps.executeQuery();
		
		user user = new user();
		
		while(rs.next()) {
			user.setUid(rs.getInt("id_no"));
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			user.setEmail(rs.getString("email"));
			user.setContactNo(rs.getInt("contact_no"));
			user.setCatagory(rs.getString("job_category"));
			user.setCountry(rs.getString("country"));
			user.setStatus(rs.getString("status"));
			
		}
		
		
		ps.close();
		connection.close();		
		
		return user;
	}*/

}
