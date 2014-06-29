package com.dost.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dost.dao.UserDAO;
import com.dost.hibernate.DbUser;
import com.dost.hibernate.Role;

@Service("userService")
@Transactional(propagation = Propagation.SUPPORTS)
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	public void saveUser(String username, String password, String role) {
		userDAO.saveUser(username, password, role);
	}

	public Role authenticateUser(String username, String password) {
		return userDAO.authenticateUser(username, password);
	}

	public DbUser getUser(Long userId) {
		return userDAO.getUser(userId);
	}

	public List<DbUser> getAllUsers() {
		return userDAO.getAllUsers();
	}
	
	public List<DbUser> getAllCounselors() {
		return userDAO.getAllCounselors();
	}
	
	public DbUser getUserByUsername(String username) {
		return userDAO.getUserByUsername(username);
	}

	
}
