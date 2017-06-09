package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int c_id;
	private String username;
	private String c_name;
	private String c_price;
	private String c_brand;
	private String c_description;
	private int c_quantity;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_price() {
		return c_price;
	}
	public void setC_price(String c_price) {
		this.c_price = c_price;
	}
	public String getC_brand() {
		return c_brand;
	}
	public void setC_brand(String c_brand) {
		this.c_brand = c_brand;
	}
	public String getC_description() {
		return c_description;
	}
	public void setC_description(String c_description) {
		this.c_description = c_description;
	}
	public int getC_quantity() {
		return c_quantity;
	}
	public void setC_quantity(int c_quantity) {
		this.c_quantity = c_quantity;
	}
	
}