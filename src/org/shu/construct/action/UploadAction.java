package org.shu.construct.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.tool.CommonParam;

import common.base.action.BaseAction;

@SuppressWarnings("serial")
public class UploadAction extends BaseAction {
	private File[] upload;
	private String uploadFileName;

	public File[] getUpload() {
		return upload;
	}

	public void setUpload(File[] upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void upload() throws Exception {
		CommonParam cp = new CommonParam();
		String uploadpath = cp.getString("Server_upload_path");
		if (upload.length > 0) {
			for (int i = 0; i < upload.length; i++) {
				InputStream is = new FileInputStream(upload[i]);
				OutputStream os = new FileOutputStream(uploadpath + uploadFileName);
				byte buffer[] = new byte[1024];
				int count = 0;
				while ((count = is.read(buffer)) > 0) {
					os.write(buffer, 0, count);
				}
				os.close();
				is.close();
			}
		}
	}

}
