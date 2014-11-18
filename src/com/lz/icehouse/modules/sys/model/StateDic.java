package com.lz.icehouse.modules.sys.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name="SYS_SD_STATE_DIC")
public class StateDic implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String shorthandname;
	private String stateexplain;
	
	@Id
	@GeneratedValue
	@NotNull
	@Column(name="sd_state_id")
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@Length(max=200)
	@Column(name="sd_shorthand_name")
	public String getShorthandname() {
		return shorthandname;
	}
	public void setShorthandname(String shorthandname) {
		this.shorthandname = shorthandname;
	}
	
	@Length(max=500)
	@Column(name="sd_state_explain")
	public String getStateexplain() {
		return stateexplain;
	}
	public void setStateexplain(String stateexplain) {
		this.stateexplain = stateexplain;
	}
	
	
}
