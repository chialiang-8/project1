package com.lz.icehouse.modules.sys.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import net.sf.json.JSONObject;

import com.lz.icehouse.modules.sys.manager.UserManager;
import com.lz.icehouse.modules.sys.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	@Resource
	private UserManager userManager;
	
	private String username;
	private String password;
	private String userid;
	private String result;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserManager getUserManager() {
		return userManager;
	}

	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	
	public String addUser() throws Exception{
		try{
			User user = new User();
			
			user.setName(this.getUsername());
			user.setPassword(this.getPassword());
			user.setState("1");
			userManager.add(user);
			this.result = "1";
			return "userjson";
		}catch(Exception e){
			this.result = "0";
			return "userjson";
		}
	}
	
	
	public String getAllUsers() throws Exception{
		System.out.println("oooooooooooooooooooooooooooooooooo");
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		System.out.println("ooooooooooooooooooooooooosssssssssssooooooooo");
		List<User> users = userManager.queryAllUser();
	//	session.setAttribute("allusers", users);
		System.out.println("-----------------"+users.size()+users.get(0).getName());
		JSONObject json = new JSONObject();
		if(users.size()>0){
			json.accumulate("user", users);
			json.accumulate("success", true);
			this.setResult(json.toString());
			System.out.println(result);
		}else{
			//json.accumulate("user", users);
			json.accumulate("success", false);
		}
		return "userjson";
	}
	
	public String deleteUser() throws Exception{
		try{
			System.out.println("2222222222222ooooooooooooooooooooooooosssssssssssooooooooo"+getUserid());
			userManager.delete(Integer.parseInt(getUserid()));
			System.out.println("ooooooooooooooooooooooooosssssssssssooooooooo");
			this.setResult("1");
		}catch(Exception e){
			this.setResult("0");
			e.printStackTrace();
		}
		return "userjson";	
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
}
