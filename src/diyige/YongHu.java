package diyige;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import WanNengGongJu.GongJu;

public class YongHu extends ActionSupport{
        private String zhanghao;
        private String miam;
        private String message="error";
        private String age="失败";
		public String getZhanghao() {
			return zhanghao;
		}
		public void setZhanghao(String zhanghao) {
			this.zhanghao = zhanghao;
		}
		public String getMiam() {
			return miam;
		}
		public void setMiam(String miam) {
			this.miam = miam;
		}
		 public String execute() throws Exception{ 
			 ActionContext context =ActionContext.getContext();
				GongJu info=new GongJu();
				String hql="from Hu";
			    List<Object> list=info.check(hql);
			
			    Hu user=new Hu();
				for(int i=0;i<list.size();i++)
				{
				user=(Hu) list.get(i);//从list集合中取数据
					if(this.getZhanghao().equals(user.getName()) && this.getMiam().equals(user.getPassword()))
					{
						age =user.getName();
						message="success";
					}
				}
				context.put("zhang",age );
				return message;
		}
        
}
