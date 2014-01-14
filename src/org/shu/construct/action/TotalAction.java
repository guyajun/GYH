package org.shu.construct.action;

import java.io.File;
import java.util.ArrayList;
import java.util.Map;

import org.shu.construct.service.DownWellService;
import org.shu.construct.service.InCheckService;
import org.shu.construct.service.PoseService;
import org.shu.construct.service.PzqService;
import org.shu.construct.service.RfidService;
import org.shu.construct.service.SynService;
import org.shu.construct.service.TotalService;
import org.shu.construct.service.XunJianService;
import org.shu.model.DownWell;
import org.shu.model.GpTotalInfo;
import org.shu.model.InCheck;
import org.shu.model.Pzqcheck;
import org.shu.model.RfidCombine;
import org.shu.model.Segmentrepair;
import org.shu.model.ShieldPose;
import org.shu.model.SynchronousGrout;
import org.tool.CommonParam;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;

@SuppressWarnings("serial")
public class TotalAction extends BaseAction {
	private Integer pageNow = 1;
	private DownWellService downWellService;
	private PzqService pzqService;
	private TotalService totalService;
	private PoseService poseService;
	private XunJianService xunJianService;
	private SynService synService;
	private InCheckService inCheckService;
	private RfidService rfidService;

	public void setRfidService(RfidService rfidService) {
		this.rfidService = rfidService;
	}

	public void setInCheckService(InCheckService inCheckService) {
		this.inCheckService = inCheckService;
	}

	public void setSynService(SynService synService) {
		this.synService = synService;
	}

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
	public Integer getPageNow() {
		return pageNow;
	}

	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}

	public String getAll() {
		Pager pager = new Pager(pageNow, totalService.getAll().size());
		ArrayList<GpTotalInfo> list = totalService.getOnePage(pageNow,
				pager.getPageSize());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("pager", pager);
		request.put("list", list);
		return "success";
	}

	public String update() {
		CommonParam cp = new CommonParam();
		String path = cp.getString("local-imgs-path");
		ArrayList<GpTotalInfo> list = totalService.getAll();
		for (int i = 0; i < list.size(); i++) {
			GpTotalInfo row = list.get(i);
			int tunnelLoop = list.get(i).getTunnelLoop();
			// 管片姿态路径更新
			ArrayList<ShieldPose> poseList = poseService
					.getByTunnelLoop(tunnelLoop);
			if (poseList.size() > 0) {
				File filePose = new File(path + "/SHIELD_POSE");
				String fileNames = "";
				System.out.println("path + '/SHIELD_POSE'="+path + "/SHIELD_POSE");
				if (filePose.isDirectory()) {
					File[] files = filePose.listFiles();
					for (int j = 0; j < files.length; j++) {
						String[] str = files[j].getName().split("-");
						int loop = 0;
						if (str[0].equals("")) {
							loop -= Integer.parseInt(str[1]);
						} else {
							loop = Integer.parseInt(str[0]);
						}
						if (loop == tunnelLoop) {
							fileNames += files[j].getName() + "@";
						}
					}
				}
				row.setShieldPosePic(fileNames);
			}

			// 同步注浆路径更新
			ArrayList<SynchronousGrout> synList = synService
					.groutSearchByLoop(tunnelLoop);
			if (synList.size() > 0) {
				SynchronousGrout syn = synList.get(0);
				File fileSyn = new File(path + "/ReportSG");
				String fileSynNames = "";
				if (fileSyn.isDirectory()) {
					File[] files = fileSyn.listFiles();
					for (int j = 0; j < files.length; j++) {
						String[] str = files[j].getName().split("-");
						int loop = 0;
						if (str[0].equals("")) {
							loop -= Integer.parseInt(str[1]);
						} else {
							loop = Integer.parseInt(str[0]);
						}
						if (loop == tunnelLoop) {
							fileSynNames += files[j].getName() + "@";
						}
					}
				}
				row.setSynchronousGroutPic(fileSynNames);
			}
			// 成环信息表(RFID_COMBINE)
			ArrayList<RfidCombine> rfidList = rfidService
					.SearchByLoop(tunnelLoop);
			if (rfidList.size() > 0) {
				String circleList = rfidList.get(0).getCirclelist();
				String[] unit = circleList.split("@");//环号+块号
				String produceLoop = unit[0].substring(0, unit[0].length() - 2);
				// 入场检查
				ArrayList<InCheck> inCheckList = inCheckService
						.searchByLoop(produceLoop);
				if (inCheckList.size() > 0) {
//					InCheck inCheck = inCheckList.get(0);
					row.setInCheckPic("10");
				}

				// 下井
				ArrayList<DownWell> downList = downWellService
						.getByLoop(produceLoop);
				if (downList.size() > 0) {
//					DownWell downWell = downList.get(0);
					row.setDownWellPic("10");
				}
				// 拼装前
				ArrayList<Pzqcheck> pzqList = pzqService.getByLoop(produceLoop);
				if (pzqList.size() > 0) {
//					Pzqcheck pzq = pzqList.get(0);
					row.setPzqcheckPic("10");
				}
			}

			// 巡检    173封左1.JPG   汉字前的是环号
			ArrayList<Segmentrepair> xunList = xunJianService
					.getByTunnelLoop(tunnelLoop);
			if (xunList.size() > 0) {
				Segmentrepair xunJian = xunList.get(0);
				if (xunJian.getIsPhoto() == "1") {
					File fileXun = new File(path + "/SegmentRepair");
					String fileXunNames = "";
					if (fileXun.isDirectory()) {
						File[] files = fileXun.listFiles();
						for (int j = 0; j < files.length; j++) {
							String fileName = files[j].getName();
							int count=0;
							for(int k=0;k<fileName.length();k++){
								if(Character.isDigit(fileName.charAt(k))){
									count++;
									continue;
								}else{
									break;
								}
							}
							int loop=Integer.parseInt(fileName.substring(0, count));
							if (loop == tunnelLoop) {
								fileXunNames += files[j].getName() + "@";
							}
						}
					}
					row.setSegmentrepairPic(fileXunNames);
				}
			}
			totalService.update(row);
		}
		return "success";
	}

	public String getByLoop() {
		int tunnelLoop=Integer.parseInt(request.getParameter("tunnelLoop"));
		ArrayList<GpTotalInfo> list = totalService.getByLoop(tunnelLoop);
		if(list.size()>0){
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("list", list);
		}
		return "success";
	}
}