package com.lz.icehouse.modules.sys.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name="SYS_JURISDICTION_INFO")
public class Jurisdiction implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private long rightcontent;
	private String username;
	
	@Id
	@GeneratedValue
	@Column(name="jurisdiction_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name="right_content_id")
	public long getRightcontent() {
		return rightcontent;
	}
	public void setRightcontent(long rightcontent) {
		this.rightcontent = rightcontent;
	}
	
	@Length(min=1, max=200)
	@Column(name="user_name")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	

	
	
}
