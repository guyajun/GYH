package org.shu.construct.dao;
import java.util.List;

import org.shu.model.BoltQuality;
import org.shu.model.ProducePlan;
import org.shu.model.WaterProof;

import common.db.GenericHibernateDao;
import common.db.QueryParam;
import common.db.QueryResult;

public class BoltQualityDAO extends GenericHibernateDao<BoltQuality,Integer>{
	public List boldSearch()
	{
		List result=this.getHibernateTemplate().find("from BoltQuality");
		return result;
	}
	
	public List boldSearch(String reportId)
	{
		List result=this.getHibernateTemplate().find("from BoltQuality where reportId=?",reportId);
		return result;
	}
	public List getAll() {
		return this.getHibernateTemplate().find("from BoltQuality");
	}
	public void saveBoltQuality(BoltQuality boltQuality){
		this.getHibernateTemplate().save(boltQuality);
	}

}

