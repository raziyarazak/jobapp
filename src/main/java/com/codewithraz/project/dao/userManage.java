package com.codewithraz.project.dao;

import java.sql.SQLException;
import java.util.List;

import com.codewithraz.project.model.user;

public interface userManage {
public boolean adduser(user user) throws SQLException, ClassNotFoundException ;
	
	public boolean edituser(user user) throws SQLException, ClassNotFoundException ;
	
	public boolean deleteuser(int userid) throws SQLException, ClassNotFoundException;
	
	//public user fetchSingleRecord(user cat) throws SQLException, ClassNotFoundException;
	
	public List<user> fetchAllRecords() throws SQLException, ClassNotFoundException;

	public user fetchSingleRecord(String cat) throws SQLException, ClassNotFoundException;
	
	

	

}
