package diyige;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import WanNengGongJu.GongJu;

public class zhuce extends ActionSupport{
       private String name;
       private String mimab;
       private String mima;
   	   private List list;
       private String message="success";
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMimab() {
		return mimab;
	}
	public void setMimab(String mimab) {
		this.mimab = mimab;
	}
	public String getMima() {
		return mima;
	}
	public void setMima(String mima) {
		this.mima = mima;
	}
	public String execute() throws Exception{
		ActionContext context =ActionContext.getContext();
		GongJu info=new GongJu();
		Hu user=new Hu();		
				
		String hql="from Hu";
		
	List<Object> list=info.check(hql);
		
		for(int i=0;i<list.size();i++)
		{
			user=(Hu) list.get(i);//从list集合中取数据
			if((this.getName().trim()).equals(user.getName().trim()))
			{
				message="error";
				break;
			}
		}
		if(message=="success")		
		{
		user.setName(this.getName().trim());//this.getUsername()是用户输入的用户名
		user.setPassword(this.getMimab().trim());
			info.save(user);
			
		}
		
		return message;
						
	}
}
	
