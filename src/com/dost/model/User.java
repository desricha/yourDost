package com.dost.model;

public class User {

	private Long userId;
	private String username;
	private String password;
	private String role;
	private String avatarId;
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getAvatarId() {
		return avatarId;
	}
	public void setAvatarId(String avatarId) {
		this.avatarId = avatarId;
	}
	
	
	
}
