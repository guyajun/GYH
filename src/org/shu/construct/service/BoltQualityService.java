package org.shu.construct.service;

import java.util.List;

import org.shu.construct.dao.BoltQualityDAO;
import org.shu.construct.dao.WaterProofDao;
import org.shu.model.BoltQuality;
import org.shu.model.WaterProof;
public class BoltQualityService{
	private BoltQualityDAO boltQualityDao;
		
	public void setBoltQualityDao(BoltQualityDAO boltQualityDao) {
		this.boltQualityDao = boltQualityDao;
	}

	public void saveBoltQuality(BoltQuality boltQuality) {
		boltQualityDao.save(boltQuality);
	}

	public List getAll() {
		return boltQualityDao.getAll();
		 
	}

}

