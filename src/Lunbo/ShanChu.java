package Lunbo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ShanChu extends ActionSupport {
	 private int shan;
	 
	public int getShan() {
		return shan;
	}

	public void setShan(int shan) {
		this.shan = shan;
	}

	public String execute() throws Exception{
		 fenye gg =new fenye();
		 gg.delete(shan);
		 List list =  gg.check(0, 4);
	     HttpServletRequest request = ServletActionContext.getRequest();
	      request.setAttribute("listt", list);
		return "success";
	}
}
