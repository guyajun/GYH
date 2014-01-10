package org.shu.action;

import java.util.List;
import java.util.Map;
import org.shu.model.ProInfo;
import org.shu.service.imp.ProInfoService;
import org.tool.Pager;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import common.base.action.BaseAction;

@SuppressWarnings("serial")
public class ProInfoAction extends BaseAction{
	private int pageNow=1;
	private int pageSize=8;
	private int total;
	private List list;
	private ProInfo proInfo;
	private ProInfoService proInfoService;
	private UploadAction uploadAction;
	
	public int getPageNow() {
		return pageNow;
	}


	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}


	public int getPageSize() {
		return pageSize;
	}


	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public List getList() {
		return list;
	}


	public void setList(List list) {
		this.list = list;
	}


	public UploadAction getUploadAction() {
		return uploadAction;
	}


	public void setUploadAction(UploadAction uploadAction) {
		this.uploadAction = uploadAction;
	}


	public ProInfo getProInfo() {
		return proInfo;
	}


	public void setProInfo(ProInfo proInfo) {
		this.proInfo = proInfo;
	}


	public ProInfoService getProInfoService() {
		return proInfoService;
	}


	public void setProInfoService(ProInfoService proInfoService) {
		this.proInfoService = proInfoService;
	}
	public String deleteProInfo() throws Exception{
		int id=proInfo.getId();
		proInfoService.deleteProInfo(id);
		return SUCCESS;
	}
	 public String updateProInfo()throws Exception{
		 ProInfo proInfo1 =proInfoService.find(proInfo.getId());
		 	proInfo1.setProName(proInfo.getProName());
		 	proInfo1.setProType(proInfo.getProType());	
			proInfo1.setProBlock(proInfo.getProBlock());
			proInfo1.setProClass(proInfo.getProClass());
			proInfo1.setProStatus(proInfo.getProStatus());
			proInfo1.setBuildUnit(proInfo.getBuildUnit());
			proInfo1.setConstructUnit(proInfo.getConstructUnit());
			proInfo1.setDescription(proInfo.getDescription());
			proInfo1.setDesignUnit(proInfo.getDesignUnit());
			proInfo1.setEndGpId(proInfo.getEndGpId());
			proInfo1.setGpCount(proInfo.getGpCount());
			proInfo1.setImportantPro(proInfo.getImportantPro());
			proInfo1.setKeyFocus(proInfo.getKeyFocus());
			proInfo1.setLevelOneId(proInfo.getLevelOneId());
			proInfo1.setLevelTwoId(proInfo.getLevelTwoId());
			proInfo1.setManageUnit(proInfo.getManageUnit());
			proInfo1.setStartGpId(proInfo.getStartGpId());
			proInfo1.setDirectorId(proInfo.getDirectorId());
			proInfo1.setDirectorPhone(proInfo.getDirectorPhone());
			proInfoService.update(proInfo1);		
		 return SUCCESS;
	 }
	 public String findProInfo(){
		int id=proInfo.getId();
		ProInfo pro3=proInfoService.find(id);
		 Map request=(Map)ActionContext.getContext().get("request");
		 request.put("pro3", pro3);
		 return SUCCESS;
	 }
	 public String findByName(){
			String str=request.getParameter("str");
			List listproInfo=proInfoService.findByName(str);
			 Map request=(Map)ActionContext.getContext().get("request");
			 request.put("listproInfo", listproInfo);
			 return SUCCESS;
		 }
	public String execute() throws Exception {
		ProInfo proInfo1 = new ProInfo();
		proInfo1.setProName(proInfo.getProName());	
		proInfo1.setProBlock(proInfo.getProBlock());
		proInfo1.setProClass(proInfo.getProClass());
		proInfo1.setProStatus(proInfo.getProStatus());
		proInfo1.setBuildUnit(proInfo.getBuildUnit());
		proInfo1.setConstructUnit(proInfo.getConstructUnit());
		proInfo1.setDescription(proInfo.getDescription());
		proInfo1.setDesignUnit(proInfo.getDesignUnit());
		proInfo1.setEndGpId(proInfo.getEndGpId());
		proInfo1.setGpCount(proInfo.getGpCount());
		proInfo1.setImportantPro(proInfo.getImportantPro());
		proInfo1.setKeyFocus(proInfo.getKeyFocus());
		proInfo1.setLevelOneId(proInfo.getLevelOneId());
		proInfo1.setLevelTwoId(proInfo.getLevelTwoId());
		proInfo1.setManageUnit(proInfo.getManageUnit());
		proInfo1.setStartGpId(proInfo.getStartGpId());
		proInfo1.setUrl("upload\\"+uploadAction.getFileName());
		proInfo1.setDirectorId(proInfo.getDirectorId());	
		proInfoService.saveProInfo(proInfo1);		
	
		return SUCCESS;
	}
	public String showProject() throws Exception {
		List list=proInfoService.findAll(pageNow,pageSize);

		Map request=(Map)ActionContext.getContext().get("request");
		Pager page=new Pager(getPageNow(),proInfoService.findProInfoSize());
		request.put("list", list);
		request.put("page", page);
		return SUCCESS;
	}

	

}
