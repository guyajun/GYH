package org.shu.construct.dao;
import java.util.List;

import org.shu.model.BoltQuality;
import org.shu.model.ProducePlan;
import org.shu.model.ShieldProcess;
import org.shu.model.WaterProof;

import common.db.GenericHibernateDao;
import common.db.QueryParam;
import common.db.QueryResult;

public class ShieldDAO extends GenericHibernateDao<ShieldProcess,Integer>{
	public List shieldSearch()
	{
		List result=this.getHibernateTemplate().find("from ShieldProcess");
		return result;
	}
	
	public List shieldSearch(String reportId)
	{
		List result=this.getHibernateTemplate().find("from ShieldProcess where reportId=?",reportId);
		return result;
	}
}

