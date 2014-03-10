package org.shu.construct.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import org.shu.construct.service.UserInfoService;
import org.shu.model.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;

public class UserInfoAction extends BaseAction {
	private String message;
	private UserInfoService userInfoService;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

	public String deleteUserInfo() {
		int id = Integer.parseInt(request.getParameter("id"));
		int parentId = Integer.parseInt(request.getParameter("parentId"));
		UserInfo userInfo = new UserInfo();
		userInfo.setId(id);
		userInfoService.deleteUserInfo(userInfo);
		ArrayList<UserInfo> list = userInfoService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		return SUCCESS;
	}

	public String quit() {
		if (session.containsKey("userId")) {
			session.remove("userId");
		}
		if (session.containsKey("nick")) {
			session.remove("nick");
		}

		if (session.containsKey("email")) {
			session.remove("email");
		}
		return "success";
	}

	public String passwordEmail() {
		String email = request.getParameter("email").trim();
		SendMailDemo sendMail = new SendMailDemo();
		String content = "请点击超链接重设密码：http://zbf.shu.edu.cn/GYH/system/resetPassword.action?email="
				+ email;
		String subject="找回密码";
		sendMail.send(email, content,subject);
		message = "ok";
		return "ok";
	}

	public String resetPassword() {
		String email = request.getParameter("email").trim();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("email", email);
		return SUCCESS;
	}

	public String resetOrRegister() {
		String email = request.getParameter("email").trim();
		String password = request.getParameter("password").trim();
		String nick = request.getParameter("nick").trim();
		ArrayList<UserInfo> list = userInfoService.getByEmail(email);
		if (list.size() == 0) {
			UserInfo userInfo = new UserInfo();
			userInfo.setEmail(email);
			userInfo.setPassword(password);
			userInfo.setNick(nick);
			userInfo.setIsActive(1);
			userInfo.setCreateTime(getToday());
			userInfoService.addUserInfo(userInfo);
		}else {
			UserInfo userInfo = list.get(0);
			userInfo.setPassword(password);
			userInfo.setNick(nick);
			userInfo.setIsActive(1);
			userInfo.setCreateTime(getToday());
			userInfoService.editUserInfo(userInfo);			
		}
		ArrayList<UserInfo> list1 = userInfoService.getByEmail(email);
		session.put("userId", list1.get(0).getId());
		session.put("nick", list1.get(0).getNick());
		return "success";
	}

	public String register() {
		String email = request.getParameter("email").trim();
		ArrayList<UserInfo> list = userInfoService.getByEmail(email);
		if (list.size() > 0) {
			message = "emailExisted";
			return "emailExisted";
		}
		String password = request.getParameter("password").trim();
		System.out.println("password" + password);
		String nick = request.getParameter("nick").trim();
		UserInfo userInfo = new UserInfo();
		userInfo.setEmail(email);
		userInfo.setPassword(password);
		userInfo.setNick(nick);
		userInfo.setIsActive(0);
		userInfo.setCreateTime(getToday());
		userInfoService.addUserInfo(userInfo);
		SendMailDemo sendMail = new SendMailDemo();
		String content = "请点击激活：http://zbf.shu.edu.cn/GYH/system/active.action?email="
				+ email;
		String subject="帐号激活";
		sendMail.send(email, content,subject);
		message = "pleaseActive";
		return "pleaseActive";
	}
	public String login() {
		String email = request.getParameter("email").trim();
		String password = request.getParameter("password").trim();
		ArrayList<UserInfo> list = userInfoService.getByEmail(email);
		if (list.size() > 0) {
			UserInfo userInfo = list.get(0);
			if (userInfo.getPassword().equals(password)
					&& userInfo.getIsActive() == 1) {
				session.put("userId", list.get(0).getId());
				session.put("nick", list.get(0).getNick());
				session.put("email", list.get(0).getEmail());
				message = "ok";
				return "ok";
			}
			if (userInfo.getPassword().equals(password)
					&& userInfo.getIsActive() == 0) {
				message = "notActive";
				return "notActive";
			}
			if (!userInfo.getPassword().equals(password)) {
				message = "notPassword";
				return "notPassword";
			}
		}
		message = "notEmail";
		return "notEmail";
	}

	public String getToday() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String today = sdf.format(date);
		return today;
	}

	public String active() throws Exception {
		String email = request.getParameter("email").trim();
		UserInfo userInfo = userInfoService.getByEmail(email).get(0);
		userInfo.setIsActive(1);
		userInfoService.editUserInfo(userInfo);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("userInfo", userInfo);
		return SUCCESS;
	}

	public String editSmall() throws Exception {
		int id = Integer.parseInt(request.getParameter("id").trim());
		int parentId = Integer
				.parseInt(request.getParameter("parentId").trim());
		String name = request.getParameter("name").trim();
		String brand = request.getParameter("brand").trim();
		String marketPrice = request.getParameter("marketPrice").trim();
		String goodPrice = request.getParameter("goodPrice").trim();
		String specification = request.getParameter("specification").trim();
		UserInfo userInfo = userInfoService.getById(id).get(0);
		String imgName = "";
		userInfoService.editUserInfo(userInfo);
		ArrayList<UserInfo> list = userInfoService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		return SUCCESS;
	}

	public String getAll() {
		ArrayList<UserInfo> list = userInfoService.getAll();
		String big = request.getParameter("category");
		int category = 1;
		if (big != null) {
			category = Integer.parseInt(big);
		}
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		return SUCCESS;
	}
}