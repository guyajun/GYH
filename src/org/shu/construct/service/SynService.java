package org.shu.construct.service;

import org.shu.construct.dao.SynDao;

public class SynService{
    
    private SynDao synDao;
    
    public void setSynDao(SynDao synDao) {
        this.synDao = synDao;
    }
    
    public int getLastLoop() {
        return synDao.getLastLoop();
    }
}
