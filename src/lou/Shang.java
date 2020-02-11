package lou;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import WanNengGongJu.GongJu;

public class Shang extends ActionSupport{
	private static final long serialVersionUID=1L;
	private File file;
	private String fileFileName;
	private  String fileContentType;
	private int ID ;
	
	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String execute() throws Exception{
		InputStream is = new FileInputStream(file);
		String uploadPath =ServletActionContext.getServletContext().getRealPath("/img/luobotuimg");
		File toFile = new File(uploadPath, this.getFileFileName());
		OutputStream os = new FileOutputStream(toFile);
		byte [] buffer = new byte[1024];
		int length =0;
		while (-1!=(length=is.read(buffer,0,buffer.length))) {
			os.write(buffer);
		}
		is.close();
		os.close();
		GongJu uo =new GongJu();
		img in = new img();
		in.setID(this.getID());
		in.setImg(this.getFileFileName().trim());
		uo.update(in);
		return "success";
	}
}
