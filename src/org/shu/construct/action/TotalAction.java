package org.shu.construct.action;

import java.util.ArrayList;
import java.util.Map;
import org.shu.construct.service.DownWellService;
import org.shu.construct.service.TotalService;
import org.shu.construct.service.PoseService;
import org.shu.construct.service.PzqService;
import org.shu.construct.service.XunJianService;
import org.shu.model.DownWell;
import org.shu.model.GpTotalInfo;
import org.shu.model.Pzqcheck;
import org.shu.model.Segmentrepair;
import org.shu.model.ShieldPose;
import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;

@SuppressWarnings("serial")
public class TotalAction extends BaseAction {
	private Integer pageNow = 1;
	private Integer loop;
	private DownWellService downWellService;
	private PzqService pzqService;
	private TotalService totalService;
	private PoseService poseService;
	private XunJianService xunJianService;
	public void setDownWellService(DownWellService downWellService) {
		this.downWellService = downWellService;
	}
	public void setPzqService(PzqService pzqService) {
		this.pzqService = pzqService;
	}	
	public void setTotalService(TotalService totalService) {
		this.totalService = totalService;
	}
	public void setPoseService(PoseService poseService) {
		this.poseService = poseService;
	}
	public void setXunJianService(XunJianService xunJianService) {
		this.xunJianService = xunJianService;
	}
	public Integer getLoop() {
		return loop;
	}
	public void setLoop(Integer loop) {
		this.loop = loop;
	}
	public Integer getPageNow() {
		return pageNow;
	}
	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}
	public String getByLoop() {	
		ArrayList<DownWell> downWellList=downWellService.getByLoop(loop);
//		int produceLoop=Integer.parseInt(downWellList.get(0).getProduceLoop().substring(1));
		ArrayList<Pzqcheck> pzqList=pzqService.getByLoop(loop);
		ArrayList<GpTotalInfo> gpTotalInfoList=totalService.getByLoop(loop);
		int tunnelLoop=gpTotalInfoList.get(0).getTunnelLoop();
		ArrayList<ShieldPose> poseList=poseService.getByTunnelLoop(tunnelLoop);
		ArrayList<Segmentrepair> xunJianList=xunJianService.getByTunnelLoop(tunnelLoop);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("downWell", downWellList.get(0));
		request.put("pzq", pzqList.get(0));
		request.put("gpTotalInfo", gpTotalInfoList.get(0));
		request.put("pose", poseList.get(0));
		request.put("xunJian", xunJianList.get(0));
		return "success";
	}
}