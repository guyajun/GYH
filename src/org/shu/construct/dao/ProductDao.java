package org.shu.construct.dao;

import java.util.ArrayList;
import org.shu.model.Product;
import common.db.GenericHibernateDao;

public class ProductDao extends GenericHibernateDao<Product, Integer> {
	public ArrayList<Product> getAll() {
		String sql = "select * from product";
		ArrayList<Product> list = (ArrayList<Product>) this.sqlFind(sql);		
		return list;
	}
	public ArrayList<Product> getById(int id) {
		String sql = "select * from product where id="+id;
		ArrayList<Product> list = (ArrayList<Product>) this.sqlFind(sql);		
		return list;
	}
	public void addProduct(Product product) {
		this.getHibernateTemplate().save(product);
	}
	public ArrayList<Product> getByParentId(int parentId) {
		String sql = "select * from product where parent_id="+parentId;
		ArrayList<Product> list = (ArrayList<Product>) this.sqlFind(sql);		
		return list;
	}
}
