package org.shu.admin.action;

import org.apache.struts2.json.annotations.JSON;
import org.shu.common.service.AdminService;
import org.shu.model.UserInfo;

import common.base.action.BaseAction;

@SuppressWarnings("serial")
public class SystemAction extends BaseAction {
	protected UserInfo userinfo;
	private AdminService adminService;
	

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	@JSON(serialize=false) 
	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}

	public String login() throws Exception
	{
		String loginName=userinfo.getLoginName();
		String password=userinfo.getPassword();
		UserInfo user=adminService.findByLoginNameAndPassword(loginName, password);
		if(user != null){
		int userid=user.getId();
		if(userid>0)
		{
			session.put("loginName", loginName);
			session.put("fullName", user.getFullName());
			return SUCCESS;
		}
		}
		return "failure";
		
	}
	public String constructLogin() throws Exception
	{
		String loginName=userinfo.getLoginName();
		String password=userinfo.getPassword();
		UserInfo user=adminService.findByLoginNameAndPassword(loginName, password);
		if(user != null){
			session.put("loginName", loginName);
			session.put("fullName", user.getFullName());
			return SUCCESS;
		}
		return "error";
		
	}
	
	
}
