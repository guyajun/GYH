package org.shu.construct.dao;
import java.util.ArrayList;
import java.util.List;

import org.shu.model.Segmentrepair;
import org.shu.model.ShieldPose;
import common.db.GenericHibernateDao;

public class PoseDao extends GenericHibernateDao<ShieldPose,Integer>{
	public ArrayList<ShieldPose> getAll()
	{
		ArrayList<ShieldPose> result=(ArrayList<ShieldPose>) this.getHibernateTemplate().find("from ShieldPose");
		return result;
	}
	
	public ArrayList<ShieldPose> getByTunnelLoop(int tunnelLoop)
	{
		String sql = "select * from SHIELD_POSE where TUNNEL_LOOP="+tunnelLoop;
		ArrayList<ShieldPose> list = (ArrayList<ShieldPose>) this.sqlFind(sql);
		return list;
	}
}

