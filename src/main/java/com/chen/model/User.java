package com.chen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity(name="t_user")
public class User {
	
	@Id
	private Integer uid;
	@Column
	private String username;
	@Column
	private String password;
	@Column
	private String name;
	@Column
	private String gender;//性别
	@Column
	private String idCard;
	@Column
	private String address;
	@Column
	private String teIno;//电话
	@Column
	private String regTime;//注册时间
	@Column
	private double balance;//余额
	@Column
	private Integer status;//状态
	@Transient
	private double money;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTeIno() {
		return teIno;
	}
	public void setTeIno(String teIno) {
		this.teIno = teIno;
	}
	public String getRegTime() {
		return regTime;
	}
	public void setRegTime(String regTime) {
		this.regTime = regTime;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public User(Integer uid, String username, String password, String name, String gender, String idCard,
			String address, String teIno, String regTime, double balance, Integer status, double money) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.idCard = idCard;
		this.address = address;
		this.teIno = teIno;
		this.regTime = regTime;
		this.balance = balance;
		this.status = status;
		this.money = money;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", name=" + name + ", gender="
				+ gender + ", idCard=" + idCard + ", address=" + address + ", teIno=" + teIno + ", regTime=" + regTime
				+ ", balance=" + balance + ", status=" + status + ", money=" + money + "]";
	}
	
}