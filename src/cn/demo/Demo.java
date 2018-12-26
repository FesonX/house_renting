package cn.demo;

import org.junit.Test;

import cn.bean.Renter;
import cn.bean.Book;
import cn.bean.Effect;
import cn.bean.Evaluate;
import cn.bean.Housetype;
import cn.bean.Township;
import cn.dao.RenterDao;
import cn.dao.BookDao;
import cn.dao.EffectDao;
import cn.dao.EvaluateDao;
import cn.dao.HousetypeDao;
import cn.dao.TownshipDao;
import cn.dao.impl.RenterDaoImpl;
import cn.dao.impl.BookDaoImpl;
import cn.dao.impl.EffectDaoImpl;
import cn.dao.impl.EvaluateDaoImpl;
import cn.dao.impl.HousetypeDaoImpl;
import cn.dao.impl.TownshipDaoImpl;

public class Demo {
	@Test
	public void test01()
	{
		Renter renter=null;
		RenterDao renterDao=new RenterDaoImpl();
		renter=renterDao.login("13537104500", "123456");
		System.out.println(renter.getname());
	}
	
	@Test
	public void test001()
	{
		//Book bb=new Book(1,"13728350138",1,1,"2018-12-21 10:52");
		BookDao bo=new BookDaoImpl();
		//bo.doBook(bb);
		for(Book b:bo.findBookByAid(1))
		{
			System.out.println(b.getBooktime());
		}
		for(Book b:bo.findBookByUid("13728350138"))
		{
			System.out.println(b.getBooktime());
		}
	}
	
	@Test
	public void test002()
	{
	    Evaluate e=new Evaluate(1,1,"13728350138","铔囩毊","2018-12-21");	
	    EvaluateDao ev=new EvaluateDaoImpl();
	    boolean flag=ev.doEvaluate(e);
	    e.setEv_content("铔囩毊鎬�");
	    flag=ev.updateEvaluate(e);
	    for(Evaluate ee:ev.findEvaluateByHid(1))
	    {
	    	System.out.println(ee.getEvtime()+ee.getEv_content());
	    }
	    for(Evaluate ee:ev.findEvaluateByUid("13728350138"))
	    {
	    	System.out.println(ee.getEvtime());
	    }
	    flag=ev.deleteEvaluateByEvid(1);
	    
	}
	
	@Test
	public void test003() 
	{
		TownshipDao t=new TownshipDaoImpl();
		for(Township tt:t.findTownship())
		{
			System.out.println(tt.getTname());
		}
		Township tt=t.findTownshipByTid(1);
		System.out.println(tt.getTname());
	}
	
	@Test
	public void test004()
	{
		HousetypeDao h=new HousetypeDaoImpl();
		for(Housetype hh:h.findHousetype())
		{
			System.out.println(hh.getHtname());
		}
		Housetype hh=h.findHousetypeByHtid(1);
		System.out.println(hh.getHtname());
	}
	
	@Test
	public void test005()
	{
		EffectDao e=new EffectDaoImpl();
		for(Effect ee:e.findEffect())
		{
			System.out.println(ee.getEname());
		}
		Effect ee=e.findEffectByEid(1);
		System.out.println(ee.getEname());
	}
}