package org.shu.construct.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.StringTokenizer;

import sun.net.ftp.FtpClient;

import common.base.action.BaseAction;

/**
 * ftp上传
 * 
 * @author colin
 * @version 1.0
 * 
 */
public class Ftp extends BaseAction{

	private String ip = "127.0.0.1";

	private String username = "ftp";

	private String password = "ftp";

	private int port = 21;

	private String localFileFullName = "";// 需要上传的目录
	private String today=DateFormat.getDateInstance().format(new Date());
	FtpClient ftpClient = null;

	OutputStream os = null;

	FileInputStream is = null;
	/**
	 * 创建文件夹
	 * 
	 * @param dir
	 * @param ftpClient
	 * @throws Exception
	 */
	private void createDir(String dir, FtpClient ftpClient) throws Exception {
//		ftpClient.ascii();
		StringTokenizer s = new StringTokenizer(dir, "/"); // 第二个参数是定界符delimiter
		s.countTokens();
		String pathName = "/"+today;
		while (s.hasMoreElements()) {
			pathName +="/" + (String) s.nextElement();
			try {
				ftpClient.sendServer("MKD " + pathName + "\r\n");
			} catch (Exception e) {
				e = null;
			}
			ftpClient.readServerResponse();
		}
		ftpClient.binary();

	}

	/**
	 * 检查文件夹是否存在
	 * 
	 * @param dir
	 * @param ftpClient
	 * @return
	 */
	private Boolean isDirExist(String dir, FtpClient ftpClient) {
		try {
			ftpClient.cd(dir);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	/**
	 * ftp上传
	 * 
	 * @param localFileFullName
	 *            上传的源文件夹
	 * @return
	 */
	public Boolean upload(String localFileFullName) {
		this.localFileFullName = localFileFullName;
		try {
			String savefilename = new String(
					localFileFullName.getBytes("ISO-8859-1"), "GBK");
			// 新建一个FTP客户端连接
			ftpClient = new FtpClient();
			ftpClient.openServer(this.ip, this.port);
			ftpClient.login(this.username, this.password);
			ftpClient.sendServer("MKD " + today + "\r\n");
			ftpClient.readServerResponse();
			// 打开本地待长传的文件
			File file_in = new File(savefilename);
			
			processFile(file_in, ftpClient);
			if (is != null) {
				is.close();
			}
			if (os != null) {
				os.close();
			}
			if (ftpClient != null) {
				ftpClient.closeServer();
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("Exception e in Ftp upload(): " + e.toString());
			return false;
		}

	}

	/**
	 * 上传文件
	 * 
	 * @param source
	 * @param ftpClient
	 * @throws Exception
	 */
	private void processFile(File source, FtpClient ftpClient) throws Exception {
		System.out.println(source.getPath().substring(localFileFullName.length()).replace("\\", "/"));
		System.out.println();
		if (source.exists()) {
			if (source.isDirectory()) {
				if (!isDirExist(source.getPath().substring(localFileFullName.length()).replace("\\", "/"), ftpClient)) {
					createDir(source.getPath().substring(localFileFullName.length()).replace("\\", "/"), ftpClient);
				}
				File sourceFile[] = source.listFiles();
				for (int i = 0; i < sourceFile.length; i++) {
					if (sourceFile[i].exists()) {
						if (sourceFile[i].isDirectory()) {
							this.processFile(sourceFile[i], ftpClient);
						} else {
							ftpClient.cd(cheangPath(sourceFile[i].getPath()));//找到
							ftpClient.binary();
							os = ftpClient.put(sourceFile[i].getName());
							byte[] bytes = new byte[1024];
							is = new FileInputStream(sourceFile[i]);
							// 开始复制
							int c;
							// 暂未考虑中途终止的情况
							while ((c = is.read(bytes)) != -1) {
								os.write(bytes, 0, c);
							}
							is.close();
							os.close();
						}
					}
				}
			} else {
				ftpClient.cd(cheangPath(source.getPath()));
				ftpClient.binary();
				os = ftpClient.put(source.getName());
				byte[] bytes = new byte[1024];
				is = new FileInputStream(source);
				// 开始复制
				int c;
				// 暂未考虑中途终止的情况
				while ((c = is.read(bytes)) != -1) {
					os.write(bytes, 0, c);
				}
				is.close();
				os.close();
			}
		} else {
			throw new Exception("此文件或文件夹[" + source.getName() + "]有误或不存在!");
		}

	}

	/**
	 * 获取当前的FTP路径
	 * 
	 * @param path
	 * @return
	 */
	private String cheangPath(String path) {//这个path是全路径=D:/000000000/debug/DBBackups/shchd
		path ="/"+today+ path.substring(localFileFullName.length()).replace("\\", "/");
		path = path.substring(0, path.lastIndexOf("/"));
		return path;
	}

	public String mainUpload() throws Exception {
		upload("D:/000000000/debug");
		return SUCCESS;
	}
}