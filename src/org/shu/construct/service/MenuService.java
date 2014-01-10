package org.shu.construct.service;

import java.util.ArrayList;
import org.shu.construct.dao.MenuDao;
import org.shu.model.FunctionInfo;

public class MenuService {

	private MenuDao menuDao;
	
	public void setMenuDao(MenuDao menuDao) {
		this.menuDao = menuDao;
	}
	public ArrayList<FunctionInfo> getAll()
	{		
		return menuDao.getAll();
	}	
}
