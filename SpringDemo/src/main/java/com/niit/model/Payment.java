package com.niit.model;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Payment implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int paymentid;
	private String mode;
	
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	
	
	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	@Override
	public String toString() {
		return "Payment [paymentmode=" + mode + "]";
	}
	

}
