package org.shu.construct.service;

import java.util.ArrayList;
import org.shu.construct.dao.UserInfoDao;
import org.shu.model.UserInfo;

public class UserInfoService {

	private UserInfoDao userInfoDao;		
	
	public void setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}
	public ArrayList<UserInfo> getByEmail(String email) {
		return userInfoDao.getByEmail(email);
	}
	public void addUserInfo(UserInfo userInfo) {
		userInfoDao.addUserInfo(userInfo);
	}
	public void editUserInfo(UserInfo userInfo) {
		userInfoDao.editUserInfo(userInfo);
	}
	public ArrayList<UserInfo> getAll()
	{		
		return userInfoDao.getAll();
	}	
	public void deleteUserInfo(UserInfo userInfo) {
		userInfoDao.delete(userInfo);
	}
	public ArrayList<UserInfo> getById(int id) {
		return userInfoDao.getById(id);
	}
}
