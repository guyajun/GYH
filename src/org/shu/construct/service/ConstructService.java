package org.shu.construct.service;

import java.util.List;

import org.shu.construct.dao.BoltQualityDAO;
import org.shu.construct.dao.PoseDao;
import org.shu.construct.dao.ShieldDAO;
import org.shu.construct.dao.SynDao;
import org.shu.construct.dao.WaterProofDao;



public class ConstructService {
	
	private WaterProofDao waterProofDAO;
	private BoltQualityDAO boldDAO;
	private ShieldDAO shieldDAO;
	private SynDao synDao;
	private PoseDao poseDAO;
	
	public PoseDao getPoseDAO() {
		return poseDAO;
	}

	public void setPoseDAO(PoseDao poseDAO) {
		this.poseDAO = poseDAO;
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

	public ShieldDAO getShieldDAO() {
		return shieldDAO;
	}

	public void setShieldDAO(ShieldDAO shieldDAO) {
		this.shieldDAO = shieldDAO;
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
	
	public List shieldSearch()
	{
		return shieldDAO.shieldSearch();
	}
	
	public List shieldSearch(String reportId) {
		return shieldDAO.shieldSearch(reportId);
	}
	
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
