package org.shu.construct.service;

import java.util.ArrayList;

import org.shu.construct.dao.PoseDao;
import org.shu.model.ShieldPose;
public class PoseService {

	private PoseDao poseDao;	
	
	public void setPoseDao(PoseDao poseDao) {
		this.poseDao = poseDao;
	}
	public ArrayList<ShieldPose> getAll()
	{		
		return poseDao.getAll();
	}
	public ArrayList<ShieldPose> getByTunnelLoop(int tunnelLoop)
	{		
		return poseDao.getByTunnelLoop(tunnelLoop);
	}
	
}
