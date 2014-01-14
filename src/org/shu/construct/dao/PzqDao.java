package org.shu.construct.dao;

import java.util.ArrayList;
import org.shu.model.Pzqcheck;
import common.db.GenericHibernateDao;

public class PzqDao extends GenericHibernateDao<Pzqcheck, Integer> {
	public ArrayList<Pzqcheck> getAll() {
		String sql = "select * from PZQcheck";
		ArrayList<Pzqcheck> list = (ArrayList<Pzqcheck>) this.sqlFind(sql);
		return list;
	}

	public ArrayList<Pzqcheck> getByLoop(String produceLoop) {
		String sql = "select * from PZQcheck where PRODUCE_LOOP like '" + produceLoop+"__';";
		ArrayList<Pzqcheck> list = (ArrayList<Pzqcheck>) this
				.sqlFind(sql);
		return list;
	}
}
