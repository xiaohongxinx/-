package com.bw.entity;

public class Movie {
	private int id;
    private String mname;
    private String pname;
    private String mprice;
    private String startdate;
    private String enddate;
    private String mlong;
    private String mtype;
    private String mtime;
    private String marea;
    private String mstaus;
    private String startprice;
    private String endprice;
    private String smlong;
    private String emlong;
    
	public String getStartprice() {
		return startprice;
	}
	public void setStartprice(String startprice) {
		this.startprice = startprice;
	}
	public String getEndprice() {
		return endprice;
	}
	public void setEndprice(String endprice) {
		this.endprice = endprice;
	}
	public String getSmlong() {
		return smlong;
	}
	public void setSmlong(String smlong) {
		this.smlong = smlong;
	}
	public String getEmlong() {
		return emlong;
	}
	public void setEmlong(String emlong) {
		this.emlong = emlong;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	
	public String getMprice() {
		return mprice;
	}
	public void setMprice(String mprice) {
		this.mprice = mprice;
	}
	public String getMlong() {
		return mlong;
	}
	public void setMlong(String mlong) {
		this.mlong = mlong;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	public String getMarea() {
		return marea;
	}
	public void setMarea(String marea) {
		this.marea = marea;
	}
	public String getMstaus() {
		return mstaus;
	}
	public void setMstaus(String mstaus) {
		this.mstaus = mstaus;
	}

	public Movie(int id, String mname, String pname, String mprice, String startdate, String enddate, String mlong,
			String mtype, String mtime, String marea, String mstaus) {
		super();
		this.id = id;
		this.mname = mname;
		this.pname = pname;
		this.mprice = mprice;
		this.startdate = startdate;
		this.enddate = enddate;
		this.mlong = mlong;
		this.mtype = mtype;
		this.mtime = mtime;
		this.marea = marea;
		this.mstaus = mstaus;
	}
	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Movie [id=" + id + ", mname=" + mname + ", mprice=" + mprice + ", startdate=" + startdate + ", enddate="
				+ enddate + ", mlong=" + mlong + ", mtype=" + mtype + ", mtime=" + mtime + ", marea=" + marea
				+ ", mstaus=" + mstaus + "]";
	}
    
}
