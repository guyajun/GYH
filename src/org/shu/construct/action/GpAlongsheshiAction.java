package org.shu.construct.action;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Map;
import org.shu.construct.service.GpAlongsheshiService;
import org.shu.construct.service.ShieldPoseService;
import org.shu.model.GpAlongsheshi;
import org.shu.model.GpSoilproperty;
import org.shu.model.ShieldPose;
import org.tool.Pager;

import com.opensymphony.xwork2.ActionContext;

import common.base.action.BaseAction;
import common.base.action.ExportExcel;

public class GpAlongsheshiAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	private Integer pageNow = 1;
	private GpAlongsheshiService sheshiService;
	private Integer ssIndx;
	private String excelPath;
	public String getExcelPath() {
		return excelPath;
	}
	public void setExcelPath(String excelPath) {
		this.excelPath = excelPath;
	}
	public Integer getSsIndx() {
		return ssIndx;
	}
	public void setSsIndx(Integer ssIndx) {
		this.ssIndx = ssIndx;
	}
	public Integer getPageNow() {
		return pageNow;
	}
	public void setPageNow(Integer pageNow) {
		System.out.println("pageNow=" + pageNow);
		this.pageNow = pageNow;
	}
	public String exportExcel() throws Exception {
		String excelPathNew = URLDecoder
				.decode(new String(request.getParameter("excelPath").getBytes(
						"UTF-8"), "UTF-8"), "UTF-8");
		ArrayList<GpAlongsheshi> sheshiList = sheshiService.getAll();
		exportExcelCommon(sheshiList, excelPathNew);
		return SUCCESS;
	}
	
	public String getByssIndx() {
		Pager pager = new Pager(1,1);
		ArrayList<GpAlongsheshi> sheshiList = sheshiService.getCountById(ssIndx); 
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("pager", pager);
		request.put("sheshiList", sheshiList);
		return "success";
	}
	
	public String sheshi() throws Exception{
		Pager pager = new Pager(pageNow, sheshiService.getSheshi().size());
		ArrayList<GpAlongsheshi> sheshiList = sheshiService.getGpAlongsheshiByPage(pageNow,
				pager.getPageSize());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("pager", pager);
		request.put("sheshiList", sheshiList);
		return SUCCESS;
	}
	public GpAlongsheshiService getSheshiService() {
		return sheshiService;
	}
	public void setSheshiService(GpAlongsheshiService sheshiService) {
		this.sheshiService = sheshiService;
	}
	public void exportExcelCommon(ArrayList<GpAlongsheshi> sheshiList,
			String excelPath) {
		ArrayList<String> titles = new ArrayList<String>();
		titles.add("甚好");
		titles.add("层号");
		titles.add("土层名称");
		titles.add("含水量");
		titles.add("重度");
		titles.add("比重");
		titles.add("饱和度");
		titles.add("孔隙比");
		titles.add("内摩擦角");
		titles.add("水平渗透系数");
		titles.add("垂直渗透系数");
		titles.add("粘聚力");
		titles.add("压缩模量");
		titles.add("标准贯入");
		titles.add("压缩系数");
		titles.add("静止侧压系数");
		titles.add("塑限");
		titles.add("液限");
		titles.add("液性指数");
		titles.add("塑性指数");
		titles.add("单轴抗压");
		titles.add("石英含量");
		titles.add("东西线(0—东线 1—西线)");
		ExportExcel exportExcel = new ExportExcel();
		exportExcel.exportExcelCommon(sheshiList, titles, excelPath);

	}
}


