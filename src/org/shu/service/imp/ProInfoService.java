package org.shu.service.imp;

import java.util.List;
import org.shu.dao.imp.ProInfoDao;
import org.shu.model.ProInfo;

public class ProInfoService {
    
    private ProInfoDao proInfoDao;
    
    public void setProInfoDao(ProInfoDao proInfoDao) {
        this.proInfoDao = proInfoDao;
    }
    
    public int getLastLoop() {
        return proInfoDao.getLastLoop();
    }
    
    public void saveProInfo(ProInfo proInfo) {
        proInfoDao.saveProInfo(proInfo);
    }
    
    public List getAll() {
        return proInfoDao.getAll();
        
    }
    
    public int findProInfoSize() {
        return proInfoDao.findProInfoSize();
    }
    
    public List getAllUser() {
        return proInfoDao.getAllUser();
    }
    
    public List findAll(int pageNow, int pageSize) {
        return proInfoDao.findAll(pageNow, pageSize);
    }
    
    public ProInfo find(int id) {
        return proInfoDao.find(id);
    }
    
    public void update(ProInfo proInfo) {
        proInfoDao.update(proInfo);
    }
    
    public List<ProInfo> findByName(String str) {
        return proInfoDao.findByName(str);
    }
    
    public void deleteProInfo(int id) {
        proInfoDao.deleteProInfo(id);
        
    }
    
}
