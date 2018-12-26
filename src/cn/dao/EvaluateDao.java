package cn.dao;

import java.util.List;

import cn.bean.Evaluate;

public interface EvaluateDao {
	//1.��ӷ�������
	public boolean doEvaluate(Evaluate ev);
	//2.��ѯ��������(������ʾ������Ϣ�µ�����)
	public List<Evaluate> findEvaluateByHid(int hid);
	//3.��ѯ�������ۣ��鿴�Լ������ۣ�
	public List<Evaluate> findEvaluateByRid(String rid);
	//4.ɾ���Լ�������
	public boolean deleteEvaluateByEid(int eid);
	//5.�޸��Լ�������
	public boolean updateEvaluate(Evaluate ev);
}
