package org.shu.construct.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import org.shu.construct.service.ProductService;
import org.shu.model.Product;
import org.tool.CommonParam;

import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;

public class ProductAction extends BaseAction {
	private File upload;
	private String uploadFileName;
	private ProductService productService;

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public String addBig() {
		String name = request.getParameter("name");
		Product product = new Product();
		product.setName(name);
		product.setParentId(0);
		productService.addProduct(product);
		ArrayList<Product> list = productService.getAll();
		ArrayList<Product> list1=productService.getByParentId(1);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("list1", list1);
		return SUCCESS;
	}


	public String getToday() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
		Date date = new Date();
		String today = sdf.format(date);
		return today;
	}
	public String addSmall() throws Exception {
		String name = request.getParameter("name");
		int parentId = Integer.parseInt(request.getParameter("parentId"));
		String brand = request.getParameter("brand");
		String marketPrice = request.getParameter("marketPrice");
		String goodPrice = request.getParameter("goodPrice");
		String specification = request.getParameter("specification");
		Product product = new Product();
		product.setName(name);
		product.setParentId(parentId);
		product.setBrand(brand);
		product.setMarketPrice(marketPrice);
		product.setGoodPrice(goodPrice);
		product.setSpecification(specification);
		CommonParam cp = new CommonParam();
		String uploadpath = cp.getString("local-imgs-path");
		String today=getToday();
		String[] str=uploadFileName.split("\\.");
		String imgName=today+"."+str[str.length-1];
		product.setImage1(imgName);
		productService.addProduct(product);
		if (upload != null) {
			InputStream is = new FileInputStream(upload);
			OutputStream os = new FileOutputStream(uploadpath +imgName);
			byte buffer[] = new byte[1024];
			int count = 0;
			while ((count = is.read(buffer)) > 0) {
				os.write(buffer, 0, count);
			}
			os.close();
			is.close();
		}
		ArrayList<Product> list = productService.getAll();
		ArrayList<Product> list1=productService.getByParentId(parentId);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("list1", list1);
		return SUCCESS;
	}
	// public void uploadMulti() throws Exception {
	// CommonParam cp = new CommonParam();
	// String uploadpath = cp.getString("local-imgs-path");
	// if (upload.length > 0) {
	// for (int i = 0; i < upload.length; i++) {
	// InputStream is = new FileInputStream(upload[i]);
	// OutputStream os = new FileOutputStream(uploadpath + uploadFileName[i]);
	// byte buffer[] = new byte[1024];
	// int count = 0;
	// while ((count = is.read(buffer)) > 0) {
	// os.write(buffer, 0, count);
	// }
	// os.close();
	// is.close();
	// }
	// }
	// }
	public String getAll() {
		ArrayList<Product> list = productService.getAll();
		String big=request.getParameter("category");
		int category=1;
		if(big!=null){
			category=Integer.parseInt(big);			
		}
		ArrayList<Product> list1=productService.getByParentId(category);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("list1", list1);
		return SUCCESS;
	}
}