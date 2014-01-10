package org.shu.construct.dao;

import java.util.List;

import org.shu.model.BoltQuality;
import org.shu.model.GpTotalInfo;
import org.shu.model.ProducePlan;
import org.shu.model.ShieldProcess;
import org.shu.model.SynchronousGrout;
import org.shu.model.WaterProof;

import common.db.GenericHibernateDao;
import common.db.QueryParam;
import common.db.QueryResult;

public class SynDao extends GenericHibernateDao<SynchronousGrout, Integer> {
    
    public List synSearch()
    {
        List result = this.getHibernateTemplate().find("from SynchronousGrout");
        return result;
    }
    
    public List synSearch(String reportId)
    {
        List result = this.getHibernateTemplate().find("from SynchronousGrout where reportId=?", reportId);
        return result;
    }
    
    public int getLastLoop() {
        String sql = "select top 1 * from SYNCHRONOUS_GROUT order by id desc;";
        List<SynchronousGrout> synchronousGrouts = sqlFind(sql);
        if (synchronousGrouts.size() > 0)
            return synchronousGrouts.get(0).getTunnelLoop();
        else
            return 0;
    }
}
