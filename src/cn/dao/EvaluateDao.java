package cn.dao;

import java.util.List;

import cn.bean.Evaluate;

public interface EvaluateDao {
	//1.添加房屋评价
	public boolean doEvaluate(Evaluate ev);
	//2.查询房屋评价(用于显示房屋信息下的评论)
	public List<Evaluate> findEvaluateByHid(int hid);
	//3.查询房屋评价（查看自己的评价）
	public List<Evaluate> findEvaluateByRid(String rid);
	//4.删除自己的评价
	public boolean deleteEvaluateByEid(int eid);
	//5.修改自己的评价
	public boolean updateEvaluate(Evaluate ev);
}
