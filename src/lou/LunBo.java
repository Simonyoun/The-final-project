package lou;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import WanNengGongJu.GongJu;
import diyige.neirong;
public class LunBo extends ActionSupport{
	   public String execute() throws Exception{
		GongJu h =new GongJu();
		String hql="from img";
	    List list=h.check(hql);
       HttpServletRequest request = ServletActionContext.getRequest();
       request.setAttribute("list", list);
		return "success"; 
	   }
}
