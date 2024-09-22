package com.my.scientific.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 报修
 * @author 
 *
 */
@Entity
@Table(name="repair")
public class Repair {
	//设备名；故障原因；地点；电话；姓名;部门：后勤部；教务处；校长办公室；宿管部；
	private Integer id;
	private String sbm;//设备名
	private String yy;//原因
	private String dd;//地点
	private String phone;//手机号
	private String name;
	private String bm;//部门
	private Worker worker;//维修工
	private Integer status;//0未分配 1已分配 2已维修
	private String fankui;//反馈
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	@ManyToOne
    @JoinColumn(name="worker_id")
	public Worker getWorker() {
		return worker;
	}
	public void setWorker(Worker worker) {
		this.worker = worker;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getFankui() {
		return fankui;
	}
	public void setFankui(String fankui) {
		this.fankui = fankui;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSbm() {
		return sbm;
	}
	public void setSbm(String sbm) {
		this.sbm = sbm;
	}
	public String getYy() {
		return yy;
	}
	public void setYy(String yy) {
		this.yy = yy;
	}
	public String getDd() {
		return dd;
	}
	public void setDd(String dd) {
		this.dd = dd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBm() {
		return bm;
	}
	public void setBm(String bm) {
		this.bm = bm;
	}

}
