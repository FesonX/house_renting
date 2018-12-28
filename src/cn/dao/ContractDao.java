package cn.dao;

import java.util.List;

import cn.bean.Contract;

public interface ContractDao {

	public boolean doContract(Contract co);

	public boolean updateContract(Contract co);

	public boolean deleteContract(int cid);

	public List<Contract> findContractByLid(String lid);

	public List<Contract> findContractByRid(String rid);
}
