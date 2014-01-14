package org.shu.construct.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.shu.common.service.CheckService;
import org.shu.common.service.ProductService;
import org.shu.construct.service.ConstructService;
import org.shu.model.FourTableSamePart;
import org.shu.model.GpAssemble;
import org.shu.model.GpCheckLeak;
import org.shu.model.ReportPdfMapping;
import org.shu.model.SteelSkelHalf;

import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;

@SuppressWarnings("serial")
public class ConstructFileAction extends BaseAction {
	
    private ConstructService constructService;

	public ConstructService getConstructService() {
		return constructService;
	}

	public void setConstructService(ConstructService constructService) {
		this.constructService = constructService;
	}

	private String reporttype;
	private String reportId;

	public String getReportId() {
		return reportId;
	}

	public void setReportId(String reportId) {
		this.reportId = reportId;
	}

	public String getReporttype() {
		return reporttype;
	}

	public void setReporttype(String reporttype) {
		this.reporttype = reporttype;
	}

	/** ========================ʩ���˱������=================== **/

	// ʩ������
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public String constructSearch() {
		String type = request.getParameter("reporttype");
		
		String Id = String.valueOf(request.getParameter("reportId"));
		List steelsearch = new ArrayList();
		// ��ˮ���ϱ���
		if (type.equals("1001")) {
			if (reportId.length() == 0) {
				steelsearch = constructService.waterProofSearch();
			} else {
				steelsearch = constructService.waterProofSearch(Id);
			}
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("steelsearch", steelsearch);
			return "str1";
		}
		// ��˨���ϱ���
		if (type.equals("1002")) {
			if (reportId.length() == 0) {
				steelsearch = constructService.boldSearch();
			} else {
				steelsearch = constructService.boldSearch(Id);
			}
			Map request = (Map) ActionContext.getContext().get("request");
			request.put("steelsearch", steelsearch);
			return "str2";
		}
		// �ܹ��ƽ��̼�¼��
//		if (type.equals("1003")) {
//			if (reportId.length() == 0) {
//				steelsearch = constructService.shieldSearch();
//			} else {
//				steelsearch = constructService.shieldSearch(Id);
//			}
//			Map request = (Map) ActionContext.getContext().get("request");
//			request.put("steelsearch", steelsearch);
//			return "str3";
//		}
		
		// ͬ��ע����¼��
				if (type.equals("1004")) {
					if (reportId.length() == 0) {
						steelsearch = constructService.synSearch();
					} else {
						steelsearch = constructService.synSearch(Id);
					}
					Map request = (Map) ActionContext.getContext().get("request");
					request.put("steelsearch", steelsearch);
					return "str4";
				}
				
		// �ܹ��͹�Ƭ��̬����
				if (type.equals("1005")) {
					if (reportId.length() == 0) {
//						steelsearch = constructService.poseSearch();
					} else {
//						steelsearch = constructService.poseSearch(Id);
					}
					Map request = (Map) ActionContext.getContext().get("request");
					request.put("steelsearch", steelsearch);
					return "str5";
				}
		return ERROR;
	}
}
