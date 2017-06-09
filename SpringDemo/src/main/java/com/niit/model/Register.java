package com.niit.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

@Entity
@Component
public class Register {
	@Id
	private String username;
	private String emailid;
	private String password;
	private String confirmpassword;
	private String address;
	private String role;
	private Boolean enabled;
	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public void setUsername(String username)
	{
		this.username=username;
	}
	public void setEmailid(String emailid)
	{
		this.emailid=emailid;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public void setConfirmpassword(String confirmpassword)
	{
		this.confirmpassword=confirmpassword;
	}
	public void setAddress(String address)
	{
		this.address=address;
	}
	
	public String getUsername()
	{
		return username;
	}
	public String getEmailid()
	{
		return emailid;
	}
	public String getPassword()
	{
		return password;
	}
	public String getConfirmpassword() 
	{
		return confirmpassword;
	}
	public String getAddress()
	{
		return address;
	}
	}