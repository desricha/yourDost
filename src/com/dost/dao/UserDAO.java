package com.dost.dao;

import java.util.List;

import com.dost.hibernate.DbUser;
import com.dost.hibernate.Role;

public interface UserDAO {

	public void saveUser(String username, String password, String role);
	public Role authenticateUser(String username, String password);
	public DbUser getUser(Long userId);
	public List<DbUser> getAllUsers();
	public DbUser getUserByUsername(String username);
}
