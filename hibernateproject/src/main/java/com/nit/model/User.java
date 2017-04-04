package com.nit.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class User {
	@Id
	private String username;
	private String emailid;
	private String password;
	private String address;
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
	public String getAddress()
	{
		return address;
	}
}
