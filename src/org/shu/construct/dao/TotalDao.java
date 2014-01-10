package org.shu.construct.dao;

import java.util.ArrayList;

import org.shu.model.DownWell;
import org.shu.model.GpTotalInfo;

import common.db.GenericHibernateDao;

public class TotalDao extends GenericHibernateDao<GpTotalInfo, Integer> {
	public ArrayList<GpTotalInfo> getAll() {
		String sql = "select * from GP_TOTAL_INFO";
		ArrayList<GpTotalInfo> list = (ArrayList<GpTotalInfo>) this.sqlFind(sql);
		return list;
	}

	public ArrayList<GpTotalInfo> getByLoop(int loop) {
		System.out.println("loop=" + loop);
		String sql = "select * from GP_TOTAL_INFO where PRODUCE_LOOP =" + loop;
		ArrayList<GpTotalInfo> list = (ArrayList<GpTotalInfo>) this
				.sqlFind(sql);
		return list;
	}
}
