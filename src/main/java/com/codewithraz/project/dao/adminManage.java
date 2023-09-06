package com.codewithraz.project.dao;

import java.sql.SQLException;

import com.codewithraz.project.model.user;

public interface adminManage {
	
	
	public user fetchSingleRecord(int userid) throws SQLException, ClassNotFoundException;

}
