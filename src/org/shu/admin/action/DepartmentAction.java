package org.shu.admin.action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.json.annotations.JSON;
import org.shu.common.service.AdminService;
import org.shu.model.DepartmentInfo;

import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;
import common.db.QueryResult;

@SuppressWarnings("serial")
public class DepartmentAction extends BaseAction {
	private AdminService adminService;
	protected DepartmentInfo deptinfo;

	private int total;
	private List<Object> rows;

	private int page;
	private int row;
	 

	public void setPage(int page) {
		this.page = page;
	}
	
	public void setRows(List<Object> rows) {
		this.rows = rows;
	}
	 
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
	public List<Object> getRows() {
		return rows;
	}
	
	@JSON(serialize=false) 
	public DepartmentInfo getDeptinfo() {
		return deptinfo;
	}

	public void setDeptinfo(DepartmentInfo deptinfo) {
		this.deptinfo = deptinfo;
	}

	/** ========================部门管理=================== **/
	SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	/** 添加部门 **/
	public String addDept() throws Exception {
		
		Date date=new Date();
		String currentdate=matter.format(date);
		Timestamp timestamp=Timestamp.valueOf(currentdate);  //获取系统当前时间
		
		DepartmentInfo dept1 = new DepartmentInfo();
//		dept1.setId(deptinfo.getId());
		dept1.setDepartmentName(deptinfo.getDepartmentName());
		dept1.setDepartmentDescription(deptinfo.getDepartmentDescription());
		dept1.setParentId(deptinfo.getParentId());
		dept1.setCreatorId(deptinfo.getCreatorId());
		dept1.setCreateTime(timestamp);
		//dept1.setModifierId(deptinfo.getModifierId());
		//dept1.setModifyTime(deptinfo.getModifyTime());
		adminService.addDept(dept1);
		return SUCCESS;
	}
	public void delDept() throws Exception
	{
		Integer id=Integer.valueOf(request.getParameter("id"));
		adminService.delDept(id);
	}

	public String deptDataGrid() throws Exception
	{
		QueryResult<DepartmentInfo> results=adminService.getAllDepts(page, row);
		List<DepartmentInfo> deptList=results.getList();
		if(deptList.size()>0)
		{
			total=deptList.size();
		}else
		{total=0;}
		this.rows=new ArrayList<Object>();
		if(deptList.size()>0)
		{
			for(int i=0;i<deptList.size();i++)
			{
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("id", deptList.get(i).getId());
				map.put("deptname", deptList.get(i).getDepartmentName());
				map.put("descrpt", deptList.get(i).getDepartmentDescription());
				map.put("parentid", deptList.get(i).getParentId());
				map.put("creator", deptList.get(i).getCreatorId());
				map.put("createtime", deptList.get(i).getCreateTime());
				map.put("modifier", deptList.get(i).getModifierId());
				map.put("modifytime", deptList.get(i).getModifyTime());
				this.rows.add(map);
			}
		}
		return SUCCESS;
	}
	
	public String editDept() throws Exception
	{
		Integer id=deptinfo.getId();
		List deptinfo = adminService.findDeptById(id);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("deptinfo",deptinfo);
		return SUCCESS;
	}
	
	public String updateDept() throws Exception {
		Integer id=deptinfo.getId();
		DepartmentInfo dept1=adminService.findDeptEntity(id);
		dept1.setDepartmentName(deptinfo.getDepartmentName());
		dept1.setDepartmentDescription(deptinfo.getDepartmentDescription());
		dept1.setParentId(deptinfo.getParentId());
		dept1.setCreatorId(deptinfo.getCreatorId());
		dept1.setCreateTime(deptinfo.getCreateTime());
		dept1.setModifierId(deptinfo.getModifierId());
		dept1.setModifyTime(deptinfo.getModifyTime());
		Map request=(Map)ActionContext.getContext().get("request");
		adminService.updateDept(dept1);
		return SUCCESS;
	}
	
}
