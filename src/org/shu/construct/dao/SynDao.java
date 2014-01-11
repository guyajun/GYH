package org.shu.construct.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.shu.model.BoltQuality;
import org.shu.model.GpTotalInfo;
import org.shu.model.ProducePlan;
import org.shu.model.ShieldPose;
import org.shu.model.ShieldProcess;
import org.shu.model.SynchronousGrout;
import org.shu.model.WaterProof;

import common.db.GenericHibernateDao;
import common.db.QueryParam;
import common.db.QueryResult;

public class SynDao extends GenericHibernateDao<SynchronousGrout, Integer> {
	public ArrayList<SynchronousGrout> getAll() {
		ArrayList<SynchronousGrout> synGrout = (ArrayList<SynchronousGrout>) 
				this.getHibernateTemplate().find("from SynchronousGrout");
		return synGrout;
	}
    public List<SynchronousGrout> synSearch()
    {
        List<SynchronousGrout> result = this.getHibernateTemplate().find("from SynchronousGrout");
        return result;
    }
    public ArrayList<SynchronousGrout> getCountByDate(Date date) {
		String sql = "select * from Synchronous_Grout where TODAY ='" + date
				+ "';";
		ArrayList<SynchronousGrout> list = (ArrayList<SynchronousGrout>) this
				.sqlFind(sql);
		return list;
	}
    
    public List synSearch(String reportId)
    {
        List result = this.getHibernateTemplate().find("from SynchronousGrout where reportId=?", reportId);
        return result;
    }
    
    public ArrayList<SynchronousGrout> groutSearchByPage(int pageNow, int pageSize) {
		List<SynchronousGrout> list = synSearch();
		ArrayList<SynchronousGrout> list1 = new ArrayList<SynchronousGrout>();
		for (int i = ((pageNow - 1) * pageSize); i <= (pageNow * pageSize - 1); i++) {
			if (i < list.size()) {
				list1.add(list.get(i));
			} else {
				break;
			}
		}
		return list1;
	}
    public int getLastLoop() {
        String sql = "select top 1 * from SYNCHRONOUS_GROUT order by id desc;";
        List<SynchronousGrout> synchronousGrouts = sqlFind(sql);
        if (synchronousGrouts.size() > 0)
            return synchronousGrouts.get(0).getTunnelLoop();
        else
            return 0;
    }
    public ArrayList<SynchronousGrout> groutSearchByLoop(Integer tunnelLoop) {
		return (ArrayList<SynchronousGrout>) this.getHibernateTemplate().find("from SynchronousGrout where tunnelLoop=?",tunnelLoop);
	}
    public ArrayList<SynchronousGrout> getByDate(Date date, int pageNow,
			int pageSize) {
		ArrayList<SynchronousGrout> list = getCountByDate(date);
		System.out.println(list.size());
		ArrayList<SynchronousGrout> list1 = new ArrayList<SynchronousGrout>();
		for (int i = ((pageNow - 1) * pageSize); i <= (pageNow * pageSize - 1); i++) {
			if (i < list.size()) {
				list1.add(list.get(i));
			} else {
				break;
			}
		}
		return list1;
	}
}
