package cn.dao;

import java.util.List;

import cn.bean.Distinct;

public interface DistinctDao {
	//1.�������
	public boolean doDistinct(Distinct Dis);
	//2.�޸�����
	public boolean updateDistinct(Distinct Dis);
	//3.ɾ������
	public boolean deleteDistinct(int did);
	//4����������ID��ѯ
	public List<Distinct> findDistinctByDid(int did);

}
