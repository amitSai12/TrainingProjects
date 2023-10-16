package com.java.agent;

public class Agent{
	
	private int  agentId;
	private String name;
	private String City;
	private Gender gender;
	private int maritalStatus;
	private double premium;
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public int getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(int maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public double getPremium() {
		return premium;
	}
	public void setPremium(double premium) {
		this.premium = premium;
	}
	public Agent(int agentId, String name, String city, Gender gender, int maritalStatus, double premium) {
		super();
		this.agentId = agentId;
		this.name = name;
		City = city;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.premium = premium;
	}
	public Agent() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Agent [agentId=" + agentId + ", name=" + name + ", City=" + City + ", gender=" + gender
				+ ", maritalStatus=" + maritalStatus + ", premium=" + premium + "]";
	}
	
	
}
