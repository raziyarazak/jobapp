package com.codewithraz.project.service;

import java.sql.SQLException;
import java.util.List;

import com.codewithraz.project.dao.userImpl;
import com.codewithraz.project.dao.userManage;
import com.codewithraz.project.model.user;

public class userService {
	private static userService userServiceObj;

	public userService() {
		// TODO Auto-generated constructor stub
	}
public synchronized static userService getuserService() {
		
		if(userServiceObj==null) {
			userServiceObj = new userService();
		}
		return userServiceObj;
	}
private userManage getuserManage()
{
	return new userImpl();
}
public boolean adduser(user user) throws SQLException, ClassNotFoundException {
	return getuserManage().adduser(user);
	
}
public boolean edituser(user user) throws SQLException, ClassNotFoundException {
	return getuserManage().edituser(user);
}

public boolean deleteuser(int userid) throws SQLException, ClassNotFoundException {
	return getuserManage().deleteuser(userid);
}

public user fetchSingleRecord(String cat) throws SQLException, ClassNotFoundException {
	return getuserManage().fetchSingleRecord(cat);
}

public List<user> fetchAllRecords() throws SQLException, ClassNotFoundException{
	return getuserManage().fetchAllRecords();
}

}
