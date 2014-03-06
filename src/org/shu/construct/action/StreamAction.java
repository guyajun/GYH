package org.shu.construct.action;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.tool.CommonParam;
import common.base.action.BaseAction;

public class StreamAction extends BaseAction {
	private InputStream fileStream;

	public InputStream getFileStream() {
		return fileStream;
	}

	public void setFileStream(InputStream fileStream) {
		this.fileStream = fileStream;
	}

	public String getStream() throws IOException {// 施工端图片
		CommonParam cp = new CommonParam();
		String localPath = cp.getString("local-imgs-path");
		String imgName = request.getParameter("imgName");
		File file = new File(localPath + imgName);
		InputStream is = new FileInputStream(file);
		fileStream = new BufferedInputStream(is);
		return SUCCESS;
	}
}