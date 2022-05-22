package com.model;

public class Cart {
	private int pid;
	private int cid;
	private int qty;
	public Cart(int pid, int cid, int qty) {
		super();
		this.pid = pid;
		this.cid = cid;
		this.qty = qty;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
}
