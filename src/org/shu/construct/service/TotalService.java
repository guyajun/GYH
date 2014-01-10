package org.shu.construct.service;

import java.util.ArrayList;
import org.shu.construct.dao.TotalDao;
import org.shu.model.GpTotalInfo;

public class TotalService {

	private TotalDao totalDao;	
	
	public void setTotalDao(TotalDao totalDao) {
		this.totalDao = totalDao;
	}
	public ArrayList<GpTotalInfo> getAll()
	{		
		return totalDao.getAll();
	}
	public ArrayList<GpTotalInfo> getByLoop(int loop)
	{		
		return totalDao.getByLoop(loop);
	}	
}
