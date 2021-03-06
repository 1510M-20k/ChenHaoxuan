package com.chen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity(name="t_ticket")
public class Ticket {
	
	@Id
	@GeneratedValue
	private Integer tid;
	@Column
	private String tname;
	@Column
	private String startTime;
	@Column
	private Integer amount;//总计
	@Column
	private Integer balance;//剩余
	@Column
	private double price;
	@Column
	private Integer status;
	@Transient
	private Integer tnum;
	
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getBalance() {
		return balance;
	}
	public void setBalance(Integer balance) {
		this.balance = balance;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getTnum() {
		return tnum;
	}
	public void setTnum(Integer tnum) {
		this.tnum = tnum;
	}
	public Ticket(Integer tid, String tname, String startTime, Integer amount, Integer balance, double price,
			Integer status, Integer tnum) {
		super();
		this.tid = tid;
		this.tname = tname;
		this.startTime = startTime;
		this.amount = amount;
		this.balance = balance;
		this.price = price;
		this.status = status;
		this.tnum = tnum;
	}
	public Ticket() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Ticket [tid=" + tid + ", tname=" + tname + ", startTime=" + startTime + ", amount=" + amount
				+ ", balance=" + balance + ", price=" + price + ", status=" + status + ", tnum=" + tnum + "]";
	}

}
