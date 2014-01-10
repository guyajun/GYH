package org.shu.common.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.shu.admin.dao.AuthorityDAO;
import org.shu.admin.dao.DepartmentDAO;
import org.shu.admin.dao.UserDAO;
import org.shu.model.DepartmentInfo;
import org.shu.model.RoleInfo;
import org.shu.model.RoleRefUser;
import org.shu.model.UserInfo;

import common.db.QueryResult;


public class AdminService {
	private UserDAO userDAO;
	private DepartmentDAO deptDAO;
	private AuthorityDAO authorityDAO;


	public void setAuthorityDAO(AuthorityDAO authorityDAO) {
		this.authorityDAO = authorityDAO;
	}


	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	
	public void setDeptDAO(DepartmentDAO deptDAO) {
		this.deptDAO = deptDAO;
	}
	
	  public static boolean hasLogon(HttpServletRequest request) throws IOException,ServletException
	    {
	    	HttpSession session = request.getSession(true);
			if(session.getAttribute("loginName")!=null&&session.getAttribute("name").toString().length()>0){
				return true;
			}
			return false;
	    }


	/** 用户 **/
	//添加
	public void addUser(UserInfo user) {
		// TODO Auto-generated method stub
		userDAO.addUser(user);
//		RoleRefUser authority=new RoleRefUser();
//		authority.setUserInfo(user);
		
	}
	//删除
	public void delUser(Integer id)
	{
		List<RoleRefUser> Roles=authorityDAO.getRoleByUserId(id);
		authorityDAO.deleteAll(Roles);
		userDAO.delete(id);
	}
	
	//根据工号查找用户ID

	//查询
	public QueryResult<UserInfo> getAllUsers(int page,int row) throws Exception  {
		return userDAO.getAllUsers(page,row);
	}
	//返回一个用户实体
	public UserInfo getOneUser(Integer id)
	{
		return userDAO.finduser(id);
	}
	public UserInfo findUserByJobnumber(String fullname)
	{
		return userDAO.findUserByJobnumber(fullname);
	}
	//返回一个RoleRefUser实体
	public RoleRefUser findRoleRefUser(Integer userid)
	{
		return userDAO.findRoleRefUser(userid);
	}
	
	//返回一个用户List
	public List findUserById(Integer id)
	{
		return userDAO.findUserById(id);
	}
	//更新
	public void updateUser(UserInfo user)
	{
		userDAO.updateUser(user);
	}
	
	//更新rolerefuser
		public void updateRoleRefUser(RoleRefUser rolerefuser)
		{

			userDAO.updateRoleRefUser(rolerefuser);
		}
	
	public DepartmentInfo getOneDept(Integer id)
	{
		//return DepartmentDAO.findDeptEntity(id);
		return deptDAO.findDeptEntity(id);
	}
	public List findAll()
	{
		return deptDAO.findAll();
	}

//	/** 菜单 **/
//	public void addMenu(FunctionInfo menu) {
//		// TODO Auto-generated method stub
//		adminDAO.addMenu(menu);
//	}
//	@SuppressWarnings("rawtypes")
//	public List getAllMenus() {
//		// TODO Auto-generated method stub
//		return adminDAO.getAllMenus();
//	}
//
	/** 角色 **/
	public RoleInfo getOneRole(Integer id)
	{
		return authorityDAO.getOneRole(id);
	}
	public void addRoleRefUser(RoleRefUser rolerefuser)
	{
		authorityDAO.addRoleRefUser(rolerefuser);
	}
//	public void addRole(RoleInfo role) {
//		// TODO Auto-generated method stub
//		adminDAO.addRole(role);
//	}
//	@SuppressWarnings("rawtypes")
//	public List getAllRoles() {
//		// TODO Auto-generated method stub
//		return adminDAO.getAllRoles();
//	}
//
//	/** 项目 **/
//	public void addProject(ProInfo pro) {
//		// TODO Auto-generated method stub
//		adminDAO.addProject(pro);
//	}
//	@SuppressWarnings("rawtypes")
//	public List getAllPros() {
//		// TODO Auto-generated method stub
//		return adminDAO.getAllPros();
//	}
//
	/** 部门 **/
	//添加
		public void addDept(DepartmentInfo dept) {
			// TODO Auto-generated method stub
			deptDAO.addDept(dept);
			
		}
		//删除
		public void delDept(Integer deptnumber)
		{
			deptDAO.delete(deptnumber);
		}
		//查询
		public QueryResult<DepartmentInfo> getAllDepts(int page,int row) throws Exception  {
			return deptDAO.getAllDepts(page,row);
		}
		//返回一个部门实体
		public DepartmentInfo findDeptEntity(Integer deptnumber)
		{
			return deptDAO.findDeptEntity(deptnumber);
		}
		//返回一个部门List
		public List findDeptById(Integer deptnumber)
		{
			return deptDAO.findDeptById(deptnumber);
		}
		//更新
		public void updateDept(DepartmentInfo dept)
		{
			deptDAO.updateDept(dept);
		}
		
		public UserInfo findByLoginNameAndPassword(String loginName,String password)
		{
			return userDAO.findByLoginNameandPassword(loginName, password);
		}
}
