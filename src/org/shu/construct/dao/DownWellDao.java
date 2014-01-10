package org.shu.construct.dao;

import java.util.ArrayList;
import java.util.Date;

import org.shu.model.DownWell;
import org.shu.model.ShieldProcess;

import common.db.GenericHibernateDao;

public class DownWellDao extends GenericHibernateDao<DownWell, Integer> {
	public ArrayList<DownWell> getAll() {
		String sql = "select * from DOWN_WELL";
		ArrayList<DownWell> list = (ArrayList<DownWell>) this.sqlFind(sql);
		return list;
	}

	public ArrayList<DownWell> getByLoop(int loop) {
		System.out.println("loop=" + loop);
		String sql = "select * from DOWN_WELL where PRODUCE_LOOP ='-" + loop+"';";
		ArrayList<DownWell> list = (ArrayList<DownWell>) this
				.sqlFind(sql);
		return list;
	}
}
