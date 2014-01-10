package org.shu.model;

/**
 * GpCheckindex entity. @author MyEclipse Persistence Tools
 */

public class GpCheckindex implements java.io.Serializable {

	// Fields

	private Integer tgIndx;
	private String tgGaocheng;
	private String tgPingmian;
	private String tgYxgc;
	private String tgHfzk;
	private String tgZfzk;
	private String tgTyd;
	private Integer tgSdgs;
	private Double tgGxpcyxz;
	private Double tgDmcjlq;
	private Double tgDmcjcj;
	private Double tgZbjzbx;
	private Double tgGxzdbx;
	private Integer isEast;

	// Constructors

	/** default constructor */
	public GpCheckindex() {
	}

	/** full constructor */
	public GpCheckindex(String tgGaocheng, String tgPingmian, String tgYxgc,
			String tgHfzk, String tgZfzk, String tgTyd, Integer tgSdgs,
			Double tgGxpcyxz, Double tgDmcjlq, Double tgDmcjcj,
			Double tgZbjzbx, Double tgGxzdbx, Integer isEast) {
		this.tgGaocheng = tgGaocheng;
		this.tgPingmian = tgPingmian;
		this.tgYxgc = tgYxgc;
		this.tgHfzk = tgHfzk;
		this.tgZfzk = tgZfzk;
		this.tgTyd = tgTyd;
		this.tgSdgs = tgSdgs;
		this.tgGxpcyxz = tgGxpcyxz;
		this.tgDmcjlq = tgDmcjlq;
		this.tgDmcjcj = tgDmcjcj;
		this.tgZbjzbx = tgZbjzbx;
		this.tgGxzdbx = tgGxzdbx;
		this.isEast = isEast;
	}

	// Property accessors

	public Integer getTgIndx() {
		return this.tgIndx;
	}

	public void setTgIndx(Integer tgIndx) {
		this.tgIndx = tgIndx;
	}

	public String getTgGaocheng() {
		return this.tgGaocheng;
	}

	public void setTgGaocheng(String tgGaocheng) {
		this.tgGaocheng = tgGaocheng;
	}

	public String getTgPingmian() {
		return this.tgPingmian;
	}

	public void setTgPingmian(String tgPingmian) {
		this.tgPingmian = tgPingmian;
	}

	public String getTgYxgc() {
		return this.tgYxgc;
	}

	public void setTgYxgc(String tgYxgc) {
		this.tgYxgc = tgYxgc;
	}

	public String getTgHfzk() {
		return this.tgHfzk;
	}

	public void setTgHfzk(String tgHfzk) {
		this.tgHfzk = tgHfzk;
	}

	public String getTgZfzk() {
		return this.tgZfzk;
	}

	public void setTgZfzk(String tgZfzk) {
		this.tgZfzk = tgZfzk;
	}

	public String getTgTyd() {
		return this.tgTyd;
	}

	public void setTgTyd(String tgTyd) {
		this.tgTyd = tgTyd;
	}

	public Integer getTgSdgs() {
		return this.tgSdgs;
	}

	public void setTgSdgs(Integer tgSdgs) {
		this.tgSdgs = tgSdgs;
	}

	public Double getTgGxpcyxz() {
		return this.tgGxpcyxz;
	}

	public void setTgGxpcyxz(Double tgGxpcyxz) {
		this.tgGxpcyxz = tgGxpcyxz;
	}

	public Double getTgDmcjlq() {
		return this.tgDmcjlq;
	}

	public void setTgDmcjlq(Double tgDmcjlq) {
		this.tgDmcjlq = tgDmcjlq;
	}

	public Double getTgDmcjcj() {
		return this.tgDmcjcj;
	}

	public void setTgDmcjcj(Double tgDmcjcj) {
		this.tgDmcjcj = tgDmcjcj;
	}

	public Double getTgZbjzbx() {
		return this.tgZbjzbx;
	}

	public void setTgZbjzbx(Double tgZbjzbx) {
		this.tgZbjzbx = tgZbjzbx;
	}

	public Double getTgGxzdbx() {
		return this.tgGxzdbx;
	}

	public void setTgGxzdbx(Double tgGxzdbx) {
		this.tgGxzdbx = tgGxzdbx;
	}

	public Integer getIsEast() {
		return this.isEast;
	}

	public void setIsEast(Integer isEast) {
		this.isEast = isEast;
	}

}