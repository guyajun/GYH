package org.shu.admin.action;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;

import org.apache.struts2.json.annotations.JSON;
import org.shu.common.service.AdminService;
import org.shu.model.DepartmentInfo;
import org.shu.model.RoleInfo;
import org.shu.model.RoleRefUser;
import org.shu.model.UserInfo;

import com.opensymphony.xwork2.ActionContext;

import common.base.action.BaseAction;
import common.db.QueryResult;

@SuppressWarnings("serial")
public class UserAction extends BaseAction {
	private AdminService adminService;
	protected UserInfo userinfo;
	private RoleRefUser rolerefuser;

	public void setRolerefuser(RoleRefUser rolerefuser) {
		this.rolerefuser = rolerefuser;
	}

	private List deptlist;
	@JSON(serialize=false) 
	public List getDeptlist() {
		return adminService.findAll(); //返回部门的集合
	}

	public void setDeptlist(List deptlist) {
		this.deptlist = deptlist;
	}

	private int total;
	private List<Object> rows;

	private int page;
	private int row;
	 

	public void setPage(int page) {
		this.page = page;
	}
	
	public void setRows(List<Object> rows) {
		this.rows = rows;
	}
	 
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
	public List<Object> getRows() {
		return rows;
	}
	
	@JSON(serialize=false) 
	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}
	
	
	
	public void setRow(int row) {
		this.row = row;
	}

	//private UserInfo model=new UserInfo();
	/** ========================用户管理=================== **/
	
	SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	/** 添加用户 **/
	public String addUser() throws Exception {
		Date date=new Date();
		String currentdate=matter.format(date);
		Timestamp timestamp=Timestamp.valueOf(currentdate);  //获取系统当前时间
		UserInfo user1 = new UserInfo();
		RoleRefUser rolerefuser1=new RoleRefUser();
		String fullname=userinfo.getFullName();
		user1.setFullName(userinfo.getFullName());
		user1.setLoginName(userinfo.getLoginName());
		user1.setPassword(userinfo.getPassword());
		user1.setCellPhone(userinfo.getCellPhone());
		user1.setCreator(userinfo.getCreator());
		user1.setCreateTime(timestamp);
		user1.setDepartmentInfo(adminService.getOneDept(userinfo.getDepartmentInfo().getId()));
		user1.setRoleInfo(adminService.getOneRole(userinfo.getRoleInfo().getId()));
		adminService.addUser(user1);
		
		Integer userid=adminService.findUserByJobnumber(fullname).getId();
		rolerefuser1.setUserInfo(adminService.getOneUser(userid));
		rolerefuser1.setRoleInfo(adminService.getOneRole(userinfo.getRoleInfo().getId()));
		adminService.addRoleRefUser(rolerefuser1);
		return SUCCESS;
	}
	/** 删除用户 **/
	public void delUser() throws Exception
	{
		Integer id=Integer.valueOf(request.getParameter("id"));
		if(id != null)
		{
			try
			{
				adminService.delUser(id);
				response.setContentType("text/plain;charset=UTF-8");
				response.getWriter().println("删除成功");
			}catch(Exception e)
			{
				response.setContentType("text/plain;charset=UTF-8");
				try
				{
					response.getWriter().println("删除时出现异常");
				}catch(IOException e1)
				{
					e1.printStackTrace();
				}
				e.printStackTrace();
			}
		}
		else
		{
			response.setContentType("text/plain;charset=UTF-8");
			try
			{
				response.getWriter().println("请选择一个用户");
			}catch(IOException e)
			{
				e.printStackTrace();
			}
		}
	}

	public String userDataGrid() throws Exception
	{	
		QueryResult<UserInfo> results=adminService.getAllUsers(page, row);
		List<UserInfo> userList=results.getList();
		if(userList.size()>0)
		{
			total=userList.size();
		}else
		{total=0;}
		this.rows=new ArrayList<Object>();
		if(userList.size()>0)
		{
			for(int i=0;i<userList.size();i++)
			{
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("id", userList.get(i).getId());
				map.put("name", userList.get(i).getFullName());
				map.put("loginname", userList.get(i).getLoginName());
				DepartmentInfo dept=adminService.getOneDept(userList.get(i).getDepartmentInfo().getId());
				RoleInfo role=adminService.getOneRole(userList.get(i).getRoleInfo().getId());
				map.put("dept",dept.getDepartmentName());
				map.put("role", role.getRoleName());
				map.put("phone", userList.get(i).getCellPhone());
				map.put("creater", userList.get(i).getCreator());
				map.put("createtime", userList.get(i).getCreateTime());
				map.put("modifier", userList.get(i).getModifier());
				map.put("modifytime", userList.get(i).getModifyTime());
				this.rows.add(map);
			}
		}
		return SUCCESS;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String editUser() throws Exception
	{
		Integer id=userinfo.getId();
		List userinfo = adminService.findUserById(id);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("userinfo",userinfo);
		return SUCCESS;
	}
	
	public String updateUser() throws Exception {

		Date date=new Date();
		String currentdate=matter.format(date);
		Timestamp timestamp=Timestamp.valueOf(currentdate);	
		
		String fullname=userinfo.getFullName();
		UserInfo user1=adminService.findUserByJobnumber(fullname);
		user1.setFullName( userinfo.getFullName());
		user1.setLoginName(userinfo.getLoginName());
		user1.setPassword( userinfo.getPassword());
		user1.setCellPhone(userinfo.getCellPhone());
		user1.setModifier(userinfo.getModifier());
		user1.setModifyTime(timestamp);
		user1.setDepartmentInfo(adminService.getOneDept(userinfo.getDepartmentInfo().getId()));
		user1.setRoleInfo(adminService.getOneRole(userinfo.getRoleInfo().getId()));
		adminService.updateUser(user1);
		
		Integer userid=adminService.findUserByJobnumber(fullname).getId();
		RoleRefUser rolerefuser1=adminService.findRoleRefUser(userid);
		rolerefuser1.setUserInfo(adminService.getOneUser(userid));
		rolerefuser1.setRoleInfo(adminService.getOneRole(userinfo.getRoleInfo().getId()));
		adminService.updateRoleRefUser(rolerefuser1);
		
		return SUCCESS;
	}
	
}
