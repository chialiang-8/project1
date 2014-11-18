package com.lz.icehouse.modules.sys.manager;

import com.lz.icehouse.modules.sys.model.User;

import java.util.List;

public interface UserManager {

	public void add(User user);
	public void delete(int id);
	public User edit(User user);
	public User queryById(int id);
	public User queryByName(String Name);
	public List<User> queryAllUser();
}
