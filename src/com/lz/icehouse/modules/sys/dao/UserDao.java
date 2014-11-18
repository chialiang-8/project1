package com.lz.icehouse.modules.sys.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.lz.icehouse.common.persistence.BaseDao;
import com.lz.icehouse.modules.sys.model.User;

@Repository
public class UserDao extends BaseDao<User> {

	public List<User> findAllUser(){return find("from User", null);}
	
}

