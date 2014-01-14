package org.shu.construct.dao;

import java.util.ArrayList;

import org.shu.model.InCheck;
import org.shu.model.SynchronousGrout;

import common.db.GenericHibernateDao;

public class InCheckDao extends GenericHibernateDao<InCheck, Integer> {
	
    public ArrayList<InCheck> searchByLoop(String produceLoop) { 
    	String sql="select * from IN_CHECK where PRODUCE_LOOP like '"+produceLoop+"__';";
		return (ArrayList<InCheck>) sqlFind(sql);
	}
}
