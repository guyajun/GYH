package org.shu.construct.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;

public class TreeAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	public String getList() {
		ArrayList<BenTiKu> list1 = getLevel1();
		ArrayList<BenTiKu> list2 = getLevel2();
		ArrayList<BenTiKu> list3 = getLevel3();
		ArrayList<BenTiKu> list4 = getLevel4();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list1", list1);
		request.put("list2", list2);
		request.put("list3", list3);
		request.put("list4", list4);
		return SUCCESS;
	}
	public ArrayList<BenTiKu> getBySql(String sql) {
		ArrayList<BenTiKu> list = new ArrayList<BenTiKu>();
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/tencent",
                                                         "root", "123");
            if (!con.isClosed()) {
                System.out.println("Successfully connected to mySQL server");
            }
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(sql);            
            while (rs.next()) {
            	BenTiKu ben=new BenTiKu();
            	int id=rs.getInt("id");
                String name = rs.getString("name");
                String parentId = rs.getString("parent_id");
                String level = rs.getString("level");
                ben.setId(id);
                ben.setName(name);
                ben.setParentId(parentId);
                ben.setLevel(level);
                list.add(ben);
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<BenTiKu> getLevel1() {
		ArrayList<BenTiKu> list =getBySql("select * from ontology_base_1 where level='1'");
		return list;
	}
	public ArrayList<BenTiKu> getLevel2() {
		ArrayList<BenTiKu> list =getBySql("select * from ontology_base_1 where level='2'");
		return list;
	}
	public ArrayList<BenTiKu> getLevel3() {
		ArrayList<BenTiKu> list =getBySql("select * from ontology_base_1 where level='3'");
		return list;
	}
	public ArrayList<BenTiKu> getLevel4() {
		ArrayList<BenTiKu> list =getBySql("select * from ontology_base_1 where level='4'");
		return list;
	}
}
