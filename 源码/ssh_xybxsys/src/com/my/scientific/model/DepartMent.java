package com.my.scientific.model;

import java.io.Serializable;

/**
 * @ClassName:  
 * @Description: 
 * @author administrator
 * @date - 2021年07月21日 21时16分18秒
 */
public class DepartMent implements Serializable {
    private static final long serialVersionUID = 3148176768559230877L;
    

	/** 
	 *  @Fields Id : id
	 * 
	 * */
	private Integer id;
	/** 
	 *  @Fields Bmlx : bmlx
	 * 
	 * */
	private Integer bmlx;
	/** 
	 *  @Fields Cz : cz
	 * 
	 * */
	private String cz;
	/** 
	 *  @Fields Ms : ms
	 * 
	 * */
	private String ms;
	/** 
	 *  @Fields Name : name
	 * 
	 * */
	private String name;
	/** 
	 *  @Fields Phone : phone
	 * 
	 * */
	private String phone;

	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getBmlx() {
		return this.bmlx;
	}
	
	public void setBmlx(Integer bmlx) {
		this.bmlx = bmlx;
	}
	
	public String getCz() {
		return this.cz;
	}
	
	public void setCz(String cz) {
		this.cz = cz;
	}
	
	public String getMs() {
		return this.ms;
	}
	
	public void setMs(String ms) {
		this.ms = ms;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPhone() {
		return this.phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
    public DepartMent() {
		
	}

	public DepartMent(Integer id ,Integer bmlx ,String cz ,String ms ,String name ,String phone ){
	super();
	this.id=id;
	this.bmlx=bmlx;
	this.cz=cz;
	this.ms=ms;
	this.name=name;
	this.phone=phone;
	}
	
	@Override
	public String toString() {
		return "DepartMent [id="+ id + ",bmlx="+ bmlx + ",cz="+ cz + ",ms="+ ms + ",name="+ name + ",phone="+ phone +  "]";
	}


}

