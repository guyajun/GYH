package org.shu.construct.action;

import java.util.ArrayList;
import java.util.Map;

import org.shu.construct.service.MenuService;
import org.shu.construct.service.RoleService;
import org.shu.model.FunctionInfo;
import org.shu.model.RoleInfo;

import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;

public class MenuAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	private MenuService menuService;
	private RoleService roleService;
	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}
	public String execute(){
		ArrayList<FunctionInfo> list=menuService.getAll();
		ArrayList<RoleInfo> roleList=roleService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("roleList", roleList);
		return SUCCESS;
	}
}
