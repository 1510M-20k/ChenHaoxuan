package com.chen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="t_order")
public class Order {
	
	@Id
	@GeneratedValue
	private Integer id;
	@Column
	private Integer uid;
	@Column
	private String oid;
	@Column
	private String commitTime;
	@Column
	private double amount;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getCommitTime() {
		return commitTime;
	}
	public void setCommitTime(String commitTime) {
		this.commitTime = commitTime;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Order(Integer id, Integer uid, String oid, String commitTime, double amount) {
		super();
		this.id = id;
		this.uid = uid;
		this.oid = oid;
		this.commitTime = commitTime;
		this.amount = amount;
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", uid=" + uid + ", oid=" + oid + ", commitTime=" + commitTime + ", amount=" + amount
				+ "]";
	}
	
}
