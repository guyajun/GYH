package org.shu.construct.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.shu.construct.service.BoltQualityService;
import org.shu.model.BoltQuality;
import org.tool.CommonParam;
import common.base.action.BaseAction;

@SuppressWarnings("serial")
public class BoltQualityAction extends BaseAction{
	protected BoltQuality boltQuality;
	protected BoltQualityService boltQualityService;	
	private String fileName;
	private  File upload;      			//�ϴ����ļ����ݣ������Ƕ����List����
	private String uploadFileName;  			//�ļ���
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
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
	
	public BoltQuality getBoltQuality() {
		return boltQuality;
	}
	public void setBoltQuality(BoltQuality boltQuality) {
		this.boltQuality = boltQuality;
	}
	public void setBoltQualityService(BoltQualityService boltQualityService) {
		this.boltQualityService = boltQualityService;
	}
	public String SAVEURL1() throws Exception {	
		CommonParam cp=new CommonParam();
		String uploadpath=cp.getString("Construct_upload_path");
//		String str=boltQuality.get.getReportId();
//		if(upload!=null){		
//				InputStream is=new FileInputStream(upload);
//				
//				String str2=getUploadFileName();
//				String[] names = str2.split("\\.");	
//				str+="."+names[1];
//				setFileName(str);
//				OutputStream os=
//						new FileOutputStream(uploadpath+str);
//				byte buffer[]=new byte[1024];
//				int count=0;
//				while((count=is.read(buffer))>0){
//					os.write(buffer,0,count);			
//				}
//				os.close();
//				is.close();
//	
//		}
//		BoltQuality boltQuality1 = new BoltQuality();
//		boltQuality1.setReportId(boltQuality.getReportId());
//		boltQuality1.setUrl1(str);
//		boltQualityService.saveBoltQuality(boltQuality1);	
		return SUCCESS;
	}
	public String SAVEURL2() throws Exception {	
		CommonParam cp=new CommonParam();
		String uploadpath=cp.getString("Construct_upload_path");
//		String str=boltQuality.getReportId();
//		if(upload!=null){		
//				InputStream is=new FileInputStream(upload);
//				
//				String str2=getUploadFileName();
//				String[] names = str2.split("\\.");	
//				str+="."+names[1];
//				setFileName(str);
//				OutputStream os=
//						new FileOutputStream(uploadpath+str);
//				byte buffer[]=new byte[1024];
//				int count=0;
//				while((count=is.read(buffer))>0){
//					os.write(buffer,0,count);			
//				}
//				os.close();
//				is.close();
//	
//		}
//		BoltQuality boltQuality2 = new BoltQuality();
//		boltQuality2.setReportId(boltQuality.getReportId());
//		boltQuality2.setUrl2(str);
//		boltQualityService.saveBoltQuality(boltQuality2);
		return SUCCESS;
	}
	
	

}
