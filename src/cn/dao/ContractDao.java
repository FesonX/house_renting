package cn.dao;

import java.sql.SQLException;
import java.util.List;

import cn.bean.Contract;

public interface ContractDao {
	//1.��Ӻ�ͬ
	public boolean doContract(Contract co);
	//2.�޸ĺ�ͬ
	public boolean updateContract(Contract co);
	//3.ɾ����ͬ
	public boolean deleteContract(int cid);
	
	//4.�鿴��ͬ(�û��鿴��������)
	public List<Contract> findContractByLid(String lid);
	//5.�鿴��ͬ���û��鿴����ͣ���
	public List<Contract> findContractByRid(String rid);
/*	
	//6.�鿴��ͬ��������
	public List<Contract> findContractByLid(int lid);*/
	public int countContractSize() throws SQLException;
}
