package cn.dao;

import java.util.List;

import cn.bean.Evaluate;

public interface EvaluateDao {

	public boolean doEvaluate(Evaluate ev);

	public List<Evaluate> findEvaluateByHid(int hid);

	public List<Evaluate> findEvaluateByRid(String rid);

	public boolean deleteEvaluateByEid(int eid);

	public boolean updateEvaluate(Evaluate ev);
}
