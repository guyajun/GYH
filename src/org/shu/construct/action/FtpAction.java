package org.shu.construct.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.tool.CommonParam;

import com.opensymphony.xwork2.ActionContext;
import common.base.action.BaseAction;
 
public class FtpAction extends BaseAction { 
	private ArrayList<File> upload;
	private ArrayList<String> uploadFileName;
	private String fileFolder;	
	private String fileName;
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public ArrayList<File> getUpload() {
		return upload;
	}
	public void setUpload(ArrayList<File> upload) {
		this.upload = upload;
	}
	
	public ArrayList<String> getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(ArrayList<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getFileFolder() {
		return fileFolder;
	}
	public void setFileFolder(String fileFolder) {
		this.fileFolder = fileFolder;
	}
	public String getSon() {
        FTPClient ftpClient = new FTPClient(); 
        FileInputStream fis = null; 
        String fileFolder1=request.getParameter("folder");
        try { 
            ftpClient.connect("111.186.106.171"); 
            ftpClient.login("bofeng.zhang", "ZBF917ZGB919cs");
            FTPFile[] files=ftpClient.listFiles("/bofeng.zhang/"+fileFolder1);
            System.out.println("files.length="+files.length);
            ArrayList<String> list=new ArrayList<String>();
            for(int j=0;j<files.length;j++){
            	list.add(files[j].getName());
            }                  
            Map request = (Map) ActionContext.getContext().get("request");
    		request.put("list", list);
        } catch (IOException e) { 
            e.printStackTrace(); 
            throw new RuntimeException("FTP客户端出错！", e); 
        } finally { 
            IOUtils.closeQuietly(fis); 
            try { 
                ftpClient.disconnect(); 
            } catch (IOException e) { 
                e.printStackTrace(); 
                throw new RuntimeException("关闭FTP连接发生异常！", e); 
            } 
        }
        fileFolder=fileFolder1;
        return SUCCESS;
    } 
	public String create() {
        FTPClient ftpClient = new FTPClient(); 
        FileInputStream fis = null; 
        try { 
            ftpClient.connect("111.186.106.171"); 
            ftpClient.login("bofeng.zhang", "ZBF917ZGB919cs");
            String folderName=request.getParameter("folderName");
            ftpClient.makeDirectory("/bofeng.zhang/"+folderName);
            FTPFile[] files=ftpClient.listFiles("/bofeng.zhang");            
            System.out.println("files.length="+files.length);
            ArrayList<String> dadList=new ArrayList<String>();
            for(int j=0;j<files.length;j++){
            	dadList.add(files[j].getName());
            }              
            Map request = (Map) ActionContext.getContext().get("request");
    		request.put("dadList", dadList);
        } catch (IOException e) { 
            e.printStackTrace(); 
            throw new RuntimeException("FTP客户端出错！", e); 
        } finally { 
            IOUtils.closeQuietly(fis); 
            try { 
                ftpClient.disconnect(); 
            } catch (IOException e) { 
                e.printStackTrace(); 
                throw new RuntimeException("关闭FTP连接发生异常！", e); 
            } 
        }
        return SUCCESS;
    } 
	public String getAllFtpFolders() throws Exception, IOException {
        FTPClient ftpClient = new FTPClient();
        ftpClient.connect("111.186.106.171"); 
        ftpClient.login("bofeng.zhang", "ZBF917ZGB919cs");
        FTPFile[] files=ftpClient.listFiles("/bofeng.zhang");
        System.out.println("files.length="+files.length);
        ArrayList<String> dadList=new ArrayList<String>();
        for(int j=0;j<files.length;j++){
        	dadList.add(files[j].getName());            	
        }                  
        Map request = (Map) ActionContext.getContext().get("request");
		request.put("dadList", dadList);
        ftpClient.disconnect();
        return SUCCESS;
    } 
	public String upload() {
        FTPClient ftpClient = new FTPClient(); 
        FileInputStream fis = null; 
        try { 
            ftpClient.connect("111.186.106.171"); 
            ftpClient.login("bofeng.zhang", "ZBF917ZGB919cs");
            FTPFile[] files=ftpClient.listFiles("/bofeng.zhang");
            System.out.println("files.length="+files.length);
            for(int j=0;j<files.length;j++){
            	System.out.println(files[j].getName());
            }
            for(int i=0;i<upload.size();i++){
            	 fis = new FileInputStream(upload.get(i)); 
                 //设置上传目录 
                 ftpClient.changeWorkingDirectory("/bofeng.zhang/"+fileFolder); 
                 ftpClient.setBufferSize(1024); 
                 ftpClient.setControlEncoding("GBK"); 
                 //设置文件类型（二进制） 
                 ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE); 
                 System.out.println("fileFolder="+fileFolder);
                 System.out.println("uploadFileName.get(i)="+uploadFileName.get(i));
                 ftpClient.storeFile(uploadFileName.get(i), fis);
            } 
            FTPFile[] files1=ftpClient.listFiles("/bofeng.zhang/"+fileFolder);
            System.out.println("files.length="+files1.length);
            ArrayList<String> list=new ArrayList<String>();
            for(int j=0;j<files1.length;j++){
            	list.add(files1[j].getName());
            }                  
            Map request = (Map) ActionContext.getContext().get("request");
    		request.put("list", list);
        } catch (IOException e) { 
            e.printStackTrace(); 
            throw new RuntimeException("FTP客户端出错！", e); 
        } finally { 
            IOUtils.closeQuietly(fis); 
            try { 
                ftpClient.disconnect(); 
            } catch (IOException e) { 
                e.printStackTrace(); 
                throw new RuntimeException("关闭FTP连接发生异常！", e); 
            } 
        }
        return SUCCESS;
    } 

    public String download() { 
        FTPClient ftpClient = new FTPClient(); 
        FileOutputStream fos = null; 

        try { 
        	ftpClient.connect("111.186.106.171"); 
            ftpClient.login("bofeng.zhang", "ZBF917ZGB919cs"); 
            String downloads=request.getParameter("downloads");
            String[] fileNames=downloads.split(",");
            CommonParam cp=new CommonParam();
    		String uploadpath=cp.getString("tomcat-upload-path");
            for(int i=0;i<fileNames.length;i++){
                String remoteFileName = "/bofeng.zhang/"+fileFolder+fileNames[i];
                fos = new FileOutputStream(uploadpath+"/"+fileFolder+"/"+fileNames[i]);
                ftpClient.setBufferSize(1024); 
                //设置文件类型（二进制） 
                ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE); 
                ftpClient.retrieveFile(remoteFileName, fos); 
                fos.close();
            } 
            FTPFile[] files1=ftpClient.listFiles("/bofeng.zhang/"+fileFolder);
            System.out.println("files.length="+files1.length);
            ArrayList<String> list=new ArrayList<String>();
            for(int j=0;j<files1.length;j++){
            	list.add(files1[j].getName());
            }                  
            Map request = (Map) ActionContext.getContext().get("request");
    		request.put("list", list);
        } catch (IOException e) { 
            e.printStackTrace(); 
            throw new RuntimeException("FTP客户端出错！", e); 
        } finally { 
            IOUtils.closeQuietly(fos); 
            try { 
                ftpClient.disconnect(); 
            } catch (IOException e) { 
                e.printStackTrace(); 
                throw new RuntimeException("关闭FTP连接发生异常！", e); 
            } 
        }
        return SUCCESS;
    } 
    public String downloadFolder() { 
        FTPClient ftpClient = new FTPClient(); 
        FileOutputStream fos = null; 

        try { 
        	ftpClient.connect("111.186.106.171"); 
            ftpClient.login("bofeng.zhang", "ZBF917ZGB919cs"); 
            String downloads=request.getParameter("downloads");
            String[] folderNames=downloads.split(",");
            CommonParam cp=new CommonParam();
    		String uploadpath=cp.getString("tomcat-upload-path");
            for(int i=0;i<folderNames.length;i++){
                String remoteFolderName = "/bofeng.zhang/"+folderNames[i];
                FTPFile[] files=ftpClient.listFiles("/bofeng.zhang/"+folderNames[i]);
                File folder = new File(uploadpath+"/"+folderNames[i]);
                folder.mkdir();
                for(int j=0;j<files.length;j++){
                	 fos = new FileOutputStream(uploadpath+"/"+folderNames[i]+"/"+files[j].getName());
                     ftpClient.setBufferSize(1024); 
                     //设置文件类型（二进制） 
                     ftpClient.setFileType(FTPClient.BINARY_FILE_TYPE); 
                     ftpClient.retrieveFile(remoteFolderName+"/"+files[j].getName(), fos); 
                     fos.close();
                }
            } 
            FTPFile[] files1=ftpClient.listFiles("/bofeng.zhang");
            System.out.println("files.length="+files1.length);
            ArrayList<String> list=new ArrayList<String>();
            for(int j=0;j<files1.length;j++){
            	list.add(files1[j].getName());
            }                  
            Map request = (Map) ActionContext.getContext().get("request");
    		request.put("list", list);
        } catch (IOException e) { 
            e.printStackTrace(); 
            throw new RuntimeException("FTP客户端出错！", e); 
        } finally { 
            IOUtils.closeQuietly(fos); 
            try { 
                ftpClient.disconnect(); 
            } catch (IOException e) { 
                e.printStackTrace(); 
                throw new RuntimeException("关闭FTP连接发生异常！", e); 
            } 
        }
        return SUCCESS;
    } 
    public String delete() { 
        FTPClient ftpClient = new FTPClient(); 
        FileOutputStream fos = null; 
        try { 
        	ftpClient.connect("111.186.106.171"); 
            ftpClient.login("bofeng.zhang", "ZBF917ZGB919cs"); 
            String delete=request.getParameter("delete");
            String[] fileNames=delete.split(",");
            System.out.println("fileNames.length="+fileNames.length);
            for(int i=0;i<fileNames.length;i++){
                String remoteFileName = "/bofeng.zhang/"+fileFolder+"/"+fileNames[i]; 
                ftpClient.deleteFile(remoteFileName);
            }  
            FTPFile[] files1=ftpClient.listFiles("/bofeng.zhang/"+fileFolder);
            System.out.println("files.length="+files1.length);
            ArrayList<String> list=new ArrayList<String>();
            for(int j=0;j<files1.length;j++){
            	list.add(files1[j].getName());
            }                  
            Map request = (Map) ActionContext.getContext().get("request");
    		request.put("list", list);
        } catch (IOException e) { 
            e.printStackTrace(); 
            throw new RuntimeException("FTP客户端出错！", e); 
        } finally { 
            IOUtils.closeQuietly(fos); 
            try { 
                ftpClient.disconnect(); 
            } catch (IOException e) { 
                e.printStackTrace(); 
                throw new RuntimeException("关闭FTP连接发生异常！", e); 
            } 
        }
        return SUCCESS;
    } 
    public String deleteFolder() { 
        FTPClient ftpClient = new FTPClient(); 
        FileOutputStream fos = null; 
        try { 
        	ftpClient.connect("111.186.106.171"); 
            ftpClient.login("bofeng.zhang", "ZBF917ZGB919cs"); 
            String delete=request.getParameter("delete");
            String[] folderNames=delete.split(",");
            System.out.println("folderNames.length="+folderNames.length);
            for(int i=0;i<folderNames.length;i++){
                String remoteFolderName = "/bofeng.zhang/"+folderNames[i]; 
                FTPFile[] files=ftpClient.listFiles("/bofeng.zhang/+");
                ftpClient.dele(remoteFolderName);
            }  
            FTPFile[] files1=ftpClient.listFiles("/bofeng.zhang");
            System.out.println("files.length="+files1.length);
            ArrayList<String> list=new ArrayList<String>();
            for(int j=0;j<files1.length;j++){
            	list.add(files1[j].getName());
            }                  
            Map request = (Map) ActionContext.getContext().get("request");
    		request.put("list", list);
        } catch (IOException e) { 
            e.printStackTrace(); 
            throw new RuntimeException("FTP客户端出错！", e); 
        } finally { 
            IOUtils.closeQuietly(fos); 
            try { 
                ftpClient.disconnect(); 
            } catch (IOException e) { 
                e.printStackTrace(); 
                throw new RuntimeException("关闭FTP连接发生异常！", e); 
            } 
        }
        return SUCCESS;
    } 
}