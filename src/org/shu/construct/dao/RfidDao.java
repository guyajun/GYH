package org.shu.construct.dao;

import java.util.ArrayList;

import org.shu.model.RfidCombine;

import common.db.GenericHibernateDao;

public class RfidDao extends GenericHibernateDao<RfidCombine, Integer> {

	public ArrayList<RfidCombine> searchByLoop(int tunnelLoop) {
		return (ArrayList<RfidCombine>) this.getHibernateTemplate().find(
				"from RfidCombine where tunnelLoop=?", tunnelLoop);
	}
}
