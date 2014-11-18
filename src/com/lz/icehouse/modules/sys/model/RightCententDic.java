package com.lz.icehouse.modules.sys.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name="SYS_RIGHT_CONTENT_DIC")
public class RightCententDic implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String contentInfo;
	private long gropid;
	
	@Id
	@GeneratedValue
	@Column(name="right_content_id")
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@Length(max=200)
	@Column(name="right_content_info")
	public String getContentInfo() {
		return contentInfo;
	}
	public void setContentInfo(String contentInfo) {
		this.contentInfo = contentInfo;
	}
	
	@Column(name="jurisdiction_group_id")
	public long getGropid() {
		return gropid;
	}
	public void setGropid(long gropid) {
		this.gropid = gropid;
	}
	
	
}
