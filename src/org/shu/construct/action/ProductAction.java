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

	public String homeProduct() {
		ArrayList<Product> list = productService.getAll();
		ArrayList<Product> list1 = new ArrayList<Product>();
		ArrayList<Product> list2 = new ArrayList<Product>();
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getParentId() == 0) {
				list1.add(list.get(i));
			}
		}
		for (int i = 0; i < list1.size(); i++) {
			Product product = productService
					.getByParentId(list1.get(i).getId()).get(0);
			list2.add(product);
		}
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list2", list2);
		return SUCCESS;
	}

	public String delete() {
		int id = Integer.parseInt(request.getParameter("productId"));
		String imgName = request.getParameter("imgName");
		Product oneProduct = productService.getById(id).get(0);
		String image2 = oneProduct.getImage2();
		int index = image2.indexOf(imgName);
		if (index > 0) {
			String image22 = image2.substring(0, index - 1)
					+ image2.substring(index + imgName.length());
			oneProduct.setImage2(image22);
			productService.editProduct(oneProduct);
		}
		oneProduct = productService.getById(id).get(0);
		ArrayList<Product> list = productService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("oneProduct", oneProduct);
		request.put("list", list);
		image2 = oneProduct.getImage2();
		if (image2 != null && !image2.equals("")) {
			String[] imgs = image2.split("@");
			ArrayList<String> imgList = new ArrayList<String>();
			for (int i = 0; i < imgs.length; i++) {
				if (imgs[i] != null && !imgs[i].equals("")) {
					imgList.add(imgs[i]);
				}
			}
			request.put("imgList", imgList);
		}
		return SUCCESS;
	}

	public String detail() {
		int id = Integer.parseInt(request.getParameter("productId"));
		Product oneProduct = productService.getById(id).get(0);
		ArrayList<Product> list = productService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("oneProduct", oneProduct);
		request.put("list", list);
		String image2 = oneProduct.getImage2();
		if (image2 != null && !image2.equals("")) {
			String[] imgs = image2.split("@");
			ArrayList<String> imgList = new ArrayList<String>();
			for (int i = 0; i < imgs.length; i++) {
				if (imgs[i] != null && !imgs[i].equals("")) {
					imgList.add(imgs[i]);
				}
			}
			request.put("imgList", imgList);
		}
		return SUCCESS;
	}

	public String addBig() {
		String name = request.getParameter("name");
		Product product = new Product();
		product.setName(name);
		product.setParentId(0);
		productService.addProduct(product);
		ArrayList<Product> list = productService.getAll();
		ArrayList<Product> list1 = productService.getByParentId(1);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("list1", list1);
		return SUCCESS;
	}

	public String deleteProduct() {
		int id = Integer.parseInt(request.getParameter("id"));
		int parentId = Integer.parseInt(request.getParameter("parentId"));
		Product product = new Product();
		product.setId(id);
		productService.deleteProduct(product);
		ArrayList<Product> list = productService.getAll();
		ArrayList<Product> list1 = productService.getByParentId(parentId);
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

	public String upload() throws Exception {
		int id = Integer.parseInt(request.getParameter("id").trim());
		Product product = productService.getById(id).get(0);
		String imgName = "";
		String image2 = "";
		if (upload != null) {
			CommonParam cp = new CommonParam();
			String uploadpath = cp.getString("local-imgs-path");
			String today = getToday();
			String[] str = uploadFileName.split("\\.");
			imgName = today + "." + str[str.length - 1];
			InputStream is = new FileInputStream(upload);
			OutputStream os = new FileOutputStream(uploadpath + imgName);
			byte buffer[] = new byte[1024];
			int count = 0;
			while ((count = is.read(buffer)) > 0) {
				os.write(buffer, 0, count);
			}
			os.close();
			is.close();
			image2 = product.getImage2();
			if (image2 == null) {
				image2 = "";
			}
			image2 += "@" + imgName;
			product.setImage2(image2);
		}
		productService.editProduct(product);
		String[] imgs = image2.split("@");
		ArrayList<String> imgList = new ArrayList<String>();
		for (int i = 0; i < imgs.length; i++) {
			if (imgs[i] != null && !imgs[i].equals("")) {
				imgList.add(imgs[i]);
			}
		}
		ArrayList<Product> list = productService.getAll();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("imgList", imgList);
		request.put("oneProduct", product);
		return SUCCESS;
	}

	public String editSmall() throws Exception {
		int id = Integer.parseInt(request.getParameter("id").trim());
		int parentId = Integer
				.parseInt(request.getParameter("parentId").trim());
		String name = request.getParameter("name").trim();
		String brand = request.getParameter("brand").trim();
		String marketPrice = request.getParameter("marketPrice").trim();
		String goodPrice = request.getParameter("goodPrice").trim();
		String specification = request.getParameter("specification").trim();
		Product product = productService.getById(id).get(0);
		product.setParentId(parentId);
		product.setName(name);
		product.setBrand(brand);
		product.setMarketPrice(marketPrice);
		product.setGoodPrice(goodPrice);
		product.setSpecification(specification);
		String imgName = "";
		if (upload != null) {
			CommonParam cp = new CommonParam();
			String uploadpath = cp.getString("local-imgs-path");
			String today = getToday();
			String[] str = uploadFileName.split("\\.");
			imgName = today + "." + str[str.length - 1];
			InputStream is = new FileInputStream(upload);
			OutputStream os = new FileOutputStream(uploadpath + imgName);
			byte buffer[] = new byte[1024];
			int count = 0;
			while ((count = is.read(buffer)) > 0) {
				os.write(buffer, 0, count);
			}
			os.close();
			is.close();
			product.setImage1(imgName);
		}
		productService.editProduct(product);
		ArrayList<Product> list = productService.getAll();
		ArrayList<Product> list1 = productService.getByParentId(parentId);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("list1", list1);
		return SUCCESS;
	}

	public String addSmall() throws Exception {
		String name = request.getParameter("name").trim();
		int parentId = Integer
				.parseInt(request.getParameter("parentId").trim());
		String brand = request.getParameter("brand").trim();
		String marketPrice = request.getParameter("marketPrice").trim();
		String goodPrice = request.getParameter("goodPrice").trim();
		String specification = request.getParameter("specification").trim();
		Product product = new Product();
		product.setName(name);
		product.setParentId(parentId);
		product.setBrand(brand);
		product.setMarketPrice(marketPrice);
		product.setGoodPrice(goodPrice);
		product.setSpecification(specification);
		if (upload != null) {
			CommonParam cp = new CommonParam();
			String uploadpath = cp.getString("local-imgs-path");
			String today = getToday();
			String[] str = uploadFileName.split("\\.");
			String imgName = today + "." + str[str.length - 1];
			InputStream is = new FileInputStream(upload);
			OutputStream os = new FileOutputStream(uploadpath + imgName);
			byte buffer[] = new byte[1024];
			int count = 0;
			while ((count = is.read(buffer)) > 0) {
				os.write(buffer, 0, count);
			}
			os.close();
			is.close();
			product.setImage1(imgName);
		} else {
			product.setImage1("wenhao.jpg");
		}
		productService.addProduct(product);
		ArrayList<Product> list = productService.getAll();
		ArrayList<Product> list1 = productService.getByParentId(parentId);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("list1", list1);
		return SUCCESS;
	}

	public String getAll() {
		ArrayList<Product> list = productService.getAll();
		String big = request.getParameter("category");
		int category = 1;
		if (big != null) {
			category = Integer.parseInt(big);
		}
		ArrayList<Product> list1 = productService.getByParentId(category);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("list", list);
		request.put("list1", list1);
		return SUCCESS;
	}
}