package org.shu.construct.service;

import java.util.ArrayList;
import org.shu.construct.dao.ProductDao;
import org.shu.model.Product;

public class ProductService {

	private ProductDao productDao;	
	
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	public void addProduct(Product product) {
		productDao.addProduct(product);
	}
	public ArrayList<Product> getAll()
	{		
		return productDao.getAll();
	}	
	public ArrayList<Product> getById(int id) {
		return productDao.getById(id);
	}
	public ArrayList<Product> getByParentId(int parentId) {
		return productDao.getByParentId(parentId);
	}
}
