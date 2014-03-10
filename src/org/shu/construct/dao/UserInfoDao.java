package org.shu.construct.dao;

import java.util.ArrayList;
import org.shu.model.UserInfo;
import common.db.GenericHibernateDao;

public class UserInfoDao extends GenericHibernateDao<UserInfo, Integer> {
	public ArrayList<UserInfo> getAll() {
		String sql = "select * from user_info";
		ArrayList<UserInfo> list = (ArrayList<UserInfo>) this.sqlFind(sql);
		return list;
	}

	public ArrayList<UserInfo> getById(int id) {
		String sql = "select * from user_info where id=" + id;
		ArrayList<UserInfo> list = (ArrayList<UserInfo>) this.sqlFind(sql);
		return list;
	}
	public ArrayList<UserInfo> getByEmail(String email) {
		String sql = "select * from user_info where email='" + email+"';";
		ArrayList<UserInfo> list = (ArrayList<UserInfo>) this.sqlFind(sql);
		return list;
	}

	public void addUserInfo(UserInfo userInfo) {
		this.getHibernateTemplate().save(userInfo);
	}

	public void editUserInfo(UserInfo userInfo) {
		this.getHibernateTemplate().update(userInfo);
	}

	public void deleteUserInfo(UserInfo userInfo) {
		this.getHibernateTemplate().delete(userInfo);
	}
}
