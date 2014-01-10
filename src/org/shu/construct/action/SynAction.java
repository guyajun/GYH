package org.shu.construct.action;

import org.shu.construct.service.SynService;

import common.base.action.BaseAction;

public class SynAction extends BaseAction {
    
    private SynService synService;
    
    public void setSynService(SynService synService) {
        this.synService = synService;
    }
    
    public int getLastLoop() {
        return synService.getLastLoop();
    }
}
