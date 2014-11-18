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
@Table(name="SYS_JURISDICTION_GROUP_DIC")
public class JurisdictionGroupDic implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String groupExplain;
	
	@Id
	@GeneratedValue
	@NotNull
	@Column(name="jurisdiction_group_id")
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@Length(max=500)
	@Column(name="jurisdiction_group_explain")
	public String getGroupExplain() {
		return groupExplain;
	}
	public void setGroupExplain(String groupExplain) {
		this.groupExplain = groupExplain;
	}
	
	
}
