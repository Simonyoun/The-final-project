package diyige;


import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import Hibernate.HibernateUtils;
import Lunbo.BoTu;
import WanNengGongJu.GongJu;

public class mop {
@Test
public void delete(){
	GongJu fg =new GongJu();
	BoTu kl =new BoTu();
	kl.setBiaoti("1234");
	kl.setNeirong("1234");
	fg.save(kl);
}
}
