package cn.dao;

import java.util.List;

import cn.bean.Distinct;

public interface DistinctDao {
	//1.添加区域
	public boolean doDistinct(Distinct Dis);
	//2.修改区域
	public boolean updateDistinct(Distinct Dis);
	//3.删除区域
	public boolean deleteDistinct(int did);
	//4。根据区域ID查询
	public List<Distinct> findDistinctByDid(int did);

}
