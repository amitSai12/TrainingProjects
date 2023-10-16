package com.java.beans;

public class Calculation {

	private int firstNo;
	private int secondNo;
	
	public int getFirstNo() {
		return firstNo;
	}
	public void setFirstNo(int firstNo) {
		this.firstNo = firstNo;
	}
	public int getSecondNo() {
		return secondNo;
	}
	public void setSecondNo(int secondNo) {
		this.secondNo = secondNo;
	}
	
	public Calculation(int firstNo, int secondNo) {
		super();
		this.firstNo = firstNo;
		this.secondNo = secondNo;
	}
	public Calculation() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Calculation [firstNo=" + firstNo + ", secondNo=" + secondNo + "]";
	}
	
	public int sum() {
		return firstNo+secondNo;
	}
	public int sub() {
		return firstNo-secondNo;
	}
	public int mult() {
		return firstNo*secondNo;
	}
	
}
