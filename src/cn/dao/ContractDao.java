package cn.dao;

import java.sql.SQLException;
import java.util.List;

import cn.bean.Contract;

public interface ContractDao {
	//1.添加合同
	public boolean doContract(Contract co);
	//2.修改合同
	public boolean updateContract(Contract co);
	//3.删除合同
	public boolean deleteContract(int cid);
	
	//4.查看合同(用户查看（房东）)
	public List<Contract> findContractByLid(String lid);
	//5.查看合同（用户查看（租客））
	public List<Contract> findContractByRid(String rid);
/*	
	//6.查看合同（房东）
	public List<Contract> findContractByLid(int lid);*/
	public List<Contract> findContractByHid(int hid);
	public boolean updateContractReviewed(int cid);
	int countContractSize() throws SQLException;
}
