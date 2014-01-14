package org.shu.construct.action;

import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;

import com.opensymphony.xwork2.ActionContext;

import common.base.action.BaseAction;

public class FtpDownloadAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	FTPClient ftpclient = null;

	public void processdownload(String localPath, String remotePath)
			throws Exception {
		FileOutputStream fos = null;
		FTPFile[] list = null;
		list = ftpclient.listFiles(remotePath);
		File file = null;
		for (int i = 2; i < list.length; i++) {
			file = new File(localPath + "/" + list[i].getName());
			String newLocal = localPath + "/" + list[i].getName();
			String newRemote = remotePath + "/" + list[i].getName();
			if (list[i].isFile()) {
				fos = new FileOutputStream(file);
				ftpclient.setBufferSize(1024);
				ftpclient.setControlEncoding("UTF-8");
				ftpclient.setFileType(FTPClient.BINARY_FILE_TYPE);
				ftpclient.retrieveFile(new String(newRemote.getBytes("UTF-8"),
						"GB2312"), fos);
				fos.close();
			} else {
				file.mkdirs();
				processdownload(newLocal, newRemote);
			}
		}
	}

	public void download(String localPath, String remotePath) throws Exception {
		ftpclient = new FTPClient();
		ftpclient.connect("127.0.0.1");
		ftpclient.login("ftp", "ftp");
		processdownload(localPath, remotePath);
		ftpclient.disconnect();
	}

	public String mainDownload() throws Exception {
		String folders = request.getParameter("downloads");
		String savePath = request.getParameter("savePath");
		if (savePath.contains("\\\\")) {
			savePath = savePath.replaceAll("\\\\", "/");
		}
		String[] folderNames = folders.split(",");
		for (int i = 0; i < folderNames.length; i++) {
			download(savePath+"/" + folderNames[i], "/" + folderNames[i]);
		}
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("msg", "FTP文件"+folders+"已下载至本地"+savePath);
		return SUCCESS;
	}
}