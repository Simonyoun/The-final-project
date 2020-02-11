package Lunbo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
public class NeiRong extends ActionSupport {
	 private int tyop=4;
	 private int uop=0;
	public int getUop() {
		return uop;
	}

	public void setUop(int uop) {
		this.uop = uop;
	}

	public int getTyop() {
		return tyop;
	}

	public void setTyop(int tyop) {
		this.tyop = tyop;
	}

	public String execute() throws Exception{
		fenye h =new fenye();
	    List list=h.check(uop,tyop);
       HttpServletRequest request = ServletActionContext.getRequest();
       request.setAttribute("listt", list);
		return "success"; 
	   }
}  
