package org.shu.admin.dao;

import java.util.List;

import org.shu.model.RoleRefUser;
import org.shu.model.UserInfo;

import common.db.GenericHibernateDao;
import common.db.QueryParam;
import common.db.QueryResult;

public class UserDAO extends GenericHibernateDao<UserInfo, Integer> {
	public void addUser(UserInfo user) {
		this.getHibernateTemplate().save(user);
	}
	public QueryResult<UserInfo> getAllUsers(int page, int row)
			throws Exception {
		QueryParam param = new QueryParam();
		param.setPage(page - 1, row);
		param.addOrder("id", QueryParam.ORDER_DESC);
		QueryResult<UserInfo> result = list(param);
		return result;
	}

	public void delete(Integer id) {
		this.getHibernateTemplate().delete(finduser(id));
	}

	public UserInfo finduser(Integer id) {
		List result = this.getHibernateTemplate().find(
				"from UserInfo  where id=?", id);
		if (result.size() > 0)
			return (UserInfo) result.get(0);
		else
			return null;
	}

	public UserInfo findUserByJobnumber(String fullname) {
		List result = this.getHibernateTemplate().find(
				"from UserInfo  where fullName=?", fullname);
		if (result.size() > 0)
			return (UserInfo) result.get(0);
		else
			return null;
	}
	public RoleRefUser findRoleRefUser(Integer userid) {
		List result = this.getHibernateTemplate().find(
				"from RoleRefUser where USER_ID=?", userid);
		if (result.size() > 0)
			return (RoleRefUser) result.get(0);
		else
			return null;
	}

	public List findUserById(Integer id) {
		List result = this.getHibernateTemplate().find(
				"from UserInfo where id=?", id);
		return result;
	}

	public void updateUser(UserInfo user) {
		this.getHibernateTemplate().update(user);
	}

	public void updateRoleRefUser(RoleRefUser rolerefuser) {
		this.getHibernateTemplate().update(rolerefuser);
	}
	public UserInfo findByLoginNameandPassword(String loginName, String password) {
		String[] str = { loginName, password };
		List result = this.getHibernateTemplate().find(
				"from UserInfo where loginName=? and password=?", str);
		if (result.size() > 0)
			return (UserInfo) result.get(0);
		else
			return null;
	}

}
