package org.shu.construct.action;

import java.io.File;

import java.io.FileInputStream;

import java.io.IOException;

import sun.net.TelnetOutputStream;

import sun.net.ftp.*;
/** 
* Class    FtpFileUpload.java

* Function 使用ftp上传文件、目录 

*/ public class FtpFileUpload {
private FtpClient ftpClient=null;
public FtpFileUpload(){

     ftpClient=new FtpClient();

     ftpClient.setConnectTimeout(5000);//设置连接超时时间为5s

} 
public static void main(String[] args) throws IOException {

// TODO Auto-generated method stub

FtpFileUpload ftp = new FtpFileUpload();

ftp.connect("127.0.0.1", 21, "ftp", "ftp");

ftp.uploadDirectory("D:/debug");

} 
/** 
     * 建立与ftp服务器的连接

     * @param host      主机

     * @param port      端口

     * @param user      用户名

     * @param password     密码

     * @throws IOException     建立连接失败

     */

public void connect(String host,int port,String user,String password)throws IOException{

     ftpClient.openServer(host,port);

     ftpClient.login(user,password);

     ftpClient.binary();

} 
/** 
     * 进入某一级目录

     * @param relativePath 相对路径(也可以是绝对路径，但要注意写法)

     * @throws IOException 目录不存在或权限不够

     */

public void cd(String relativePath)throws IOException{

     ftpClient.cd(relativePath);

} /** 
     * 上传整个目录

     * @param directory       目录路径

     * @throws IOException 目录不存在或访问权限不够

     */

public void uploadDirectory(String directory)throws IOException{

     File file=new File(directory);

     String name=null;//待上传文件名

     if(file.isDirectory()){//如果为目录，则按目录传

      File[] files=file.listFiles();   

      //在ftp服务器上创建对应目录

      ftpClient.ascii();  

      String dir = file.getName();

      ftpClient.sendServer("XMKD " + dir + "\r\n");

      ftpClient.readServerResponse();

      ftpClient.cd(dir);

      ftpClient.binary();

      //循环传递目录下的所有文件与目录

      int i=0;

      for(i=0;i<files.length;i++){

       File tmpFile=files[i];

    

       if(tmpFile.isDirectory())

        uploadDirectory(tmpFile.getAbsolutePath());

       else{

        name=tmpFile.getName();

        upload(directory+"/"+name);

       }

      }

     }

     else     //如果为文件，则按文件上传

      upload(directory,file.getName());

} /** 
     * 上传文件

     * @param srcFile      源文件

     * @throws IOException 

     */

public void upload(String srcFile)throws IOException{

     File file=new File(srcFile);

     FileInputStream fin=new FileInputStream(srcFile);

     TelnetOutputStream tos = ftpClient.put(file.getName());

     //System.out.println(file.getName());

     int readLength = 0;

     byte[] buf = new byte[1024];

     while ( (readLength = fin.read(buf)) != -1) {

         tos.write(buf, 0, readLength);

     }

     fin.close();

     tos.close();

} /** 
     * 上传文件,且重新命名

     * @param srcFile      源文件

     * @param destFile     目标文件名

     * @throws IOException 

     */

public void upload(String srcFile,String destFile)throws IOException{

     upload(srcFile);

     File file=new File(srcFile);

     ftpClient.rename(file.getName(), destFile);

} /** 
     * 断开与服务器连接

     */

public void close(){

     try {

      ftpClient.closeServer();

     } catch (IOException e) {

      // TODO Auto-generated catch block

      e.printStackTrace();

     }

} //public static void main(String[] args) {

//     // TODO Auto-generated method stub

//     FtpFileUpload ftpUpload=new FtpFileUpload();

//     try {

//      ftpUpload.connect("10.10.10.10",21,"bwgm","bwgm");

//      ftpUpload.cd("ftpserver/test");//打开FTP文件路径

//      //ftpUpload.upload("D:\\upload\\ttt\\testftp.txt", "test1");//上传文件新命名

//      ftpUpload.uploadDirectory("D:\\upload\\ttt\\testftp.txt");

//      ftpUpload.close();

//     } catch (IOException e) {

//      // TODO Auto-generated catch block

//      e.printStackTrace();

//     }

//} 
}