package org.shu.construct.service;

import java.util.List;

import org.shu.construct.dao.BoltQualityDAO;
import org.shu.construct.dao.PoseDao;
import org.shu.construct.dao.SynDao;
import org.shu.construct.dao.WaterProofDao;



public class ConstructService {
	
	private WaterProofDao waterProofDAO;
	private BoltQualityDAO boldDAO;
//	private ShieldDAO shieldDao;
	private SynDao synDao;
	private PoseDao poseDao;
	public void setPoseDao(PoseDao poseDao) {
		this.poseDao = poseDao;
	}

	public WaterProofDao getWaterProofDAO() {
		return waterProofDAO;
	}

	public void setWaterProofDAO(WaterProofDao waterProofDAO) {
		this.waterProofDAO = waterProofDAO;
	}

	public BoltQualityDAO getBoldDAO() {
		return boldDAO;
	}

	public void setBoldDAO(BoltQualityDAO boldDAO) {
		this.boldDAO = boldDAO;
	}
	
   

	public void setSynDao(SynDao synDao) {
        this.synDao = synDao;
    }

    public List waterProofSearch()
	{
		return waterProofDAO.waterProofSearch();
	}
	
	public List waterProofSearch(String reportId) {
		return waterProofDAO.waterProofSearch(reportId);
	}
	
	public List boldSearch()
	{
		return boldDAO.boldSearch();
	}
	
	public List boldSearch(String reportId) {
		return boldDAO.boldSearch(reportId);
	}
	
//	public List shieldSearch()
//	{
//		return shieldDao.shieldSearch();
//	}
//	
//	public List shieldSearch(String reportId) {
//		return shieldDao.shieldSearch(reportId);
//	}
//	
	public List synSearch()
	{
		return synDao.synSearch();
	}
	
	public List synSearch(String reportId) {
		return synDao.synSearch(reportId);
	}
	
//	public List poseSearch()
//	{
////		return poseDAO.poseSearch();
//	}
	
//	public List poseSearch(String reportId) {
//		return poseDAO.poseSearch(reportId);
//	}
	
}
