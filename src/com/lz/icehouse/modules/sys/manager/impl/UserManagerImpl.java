package com.lz.icehouse.modules.sys.manager.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lz.icehouse.modules.sys.dao.UserDao;
import com.lz.icehouse.modules.sys.manager.UserManager;
import com.lz.icehouse.modules.sys.model.User;

@Service
@Transactional(readOnly=true)
public class UserManagerImpl implements UserManager {

	@Resource
	private UserDao userDao;
	

	@Override
	@Transactional(readOnly=false)
	public void add(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		userDao.delete(User.class,id);
	}

	@Override
	public User edit(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User queryById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User queryByName(String Name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> queryAllUser() {
		// TODO Auto-generated method stub
		return userDao.findAllUser();
	}

}

