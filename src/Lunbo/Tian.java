package Lunbo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import WanNengGongJu.GongJu;

public class Tian extends ActionSupport{
	private String biaoti;
	private String neirong;
	
	public String getBiaoti() {
		return biaoti;
	}

	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}

	public String getNeirong() {
		return neirong;
	}

	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}

	public String execute() throws Exception{
		GongJu fg =new GongJu();
		BoTu kl =new BoTu();
		kl.setBiaoti(this.getBiaoti());
		kl.setNeirong(this.getNeirong());
		fg.save(kl);
		fenye gg =new fenye();
		List list =  gg.check(0, 4);
	    HttpServletRequest request = ServletActionContext.getRequest();
	    request.setAttribute("listt", list);
		return "success";
	}
}
