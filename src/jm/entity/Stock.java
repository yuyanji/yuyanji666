package jm.entity;

public class Stock {
	
	private String stockname;
	private String date;
	private String oppr;
	private String clpr;
	private String username;
	private String dret;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getStockname() {
		return stockname;
	}
	public void setStockname(String stockname) {
		this.stockname = stockname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getOppr() {
		return oppr;
	}
	public void setOppr(String oppr) {
		this.oppr = oppr;
	}
	public String getClpr() {
		return clpr;
	}
	public void setClpr(String clpr) {
		this.clpr = clpr;
	}
	public String getDret() {
		return dret;
	}
	public void setDret(String dret) {
		this.dret = dret;
	}
}
