package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Orders implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int order_id;
	
	@OneToOne
	private ShippingAddress shippingAddress;
	
	@OneToOne
	private Payment payment;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) 
	{
		this.order_id = order_id;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) 
	{
		this.shippingAddress = shippingAddress;
	}

	public Payment getPayment() 
	{
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	
	public Orders()
	{
		
	}
	@Override
	public String toString() 
	{
	  return "Orders [order_id=" + order_id + ", shippingAddress=" + shippingAddress + ", payment=" + payment + "]";
	}
	
}