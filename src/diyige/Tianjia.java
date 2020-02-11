package diyige;
import java.util.List;

import org.junit.Test;

import com.opensymphony.xwork2.ActionSupport;
import WanNengGongJu.GongJu;
public class Tianjia extends ActionSupport  { 
	private String username;
	private String password;
    private String message="error";
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

   public String execute() throws Exception{ 
		GongJu info=new GongJu();
		
		String hql="from neirong";
	    List<Object> list=info.check(hql);
	
	    neirong user=new neirong();
		for(int i=0;i<list.size();i++)
		{
		user=(neirong) list.get(i);//从list集合中取数据
			if(this.getUsername().equals(user.getName()) && this.getPassword().equals(user.getPassword()))
			{
				message="success";
			}
		System.out.println(user.getID());
		}
		return message;
     }
}
