package cn.demo;

import org.junit.Test;

import cn.bean.Renter;
import cn.bean.Landlord;
import cn.bean.Contract;
import cn.bean.Admin;

import cn.dao.RenterDao;
import cn.dao.LandlordDao;
import cn.dao.ContractDao;
import cn.dao.AdminDao;

import cn.dao.impl.RenterDaoImpl;
import cn.dao.impl.LandlordDaoImpl;
import cn.dao.impl.ContractDaoImpl;
import cn.dao.impl.AdminDaoImpl;

public class Demo_HRJ {
	@Test
	public void test01() {
		Renter renter = null;
		RenterDao renterDao = new RenterDaoImpl();
		renter = renterDao.login("13537104500", "123456");
		System.out.println(renter.getname());
	}

	@Test
	public void test02() {
		Renter ad = new Renter("123", "123", "456", "123456", "Ů", "123456789", "123", null);
		boolean Flag = false;
		RenterDao renterDao = new RenterDaoImpl();
		Flag = renterDao.register(ad);
		if (Flag) {
			System.out.println("true");
		} else {
			System.out.println("false");
		}
	}

	@Test
	public void test03() {
		Renter ad = new Renter("123", "123", "456", "123456", "Ů", "123456789", "123", null);
		boolean Flag = false;
		RenterDao renterDao = new RenterDaoImpl();
		Flag = renterDao.updatePwd(ad, "admin");
		if (Flag) {
			System.out.println("true" + ad.getPassword());
		} else {
			System.out.println("false" + ad.getPassword());
		}
	}

	@Test
	public void test04() {
		Renter ad = new Renter("123", "1234", "12", "admin", "Ů", "123789", "3yyyy", "asdas");
		boolean Flag = false;
		RenterDao renterDao = new RenterDaoImpl();
		Flag = renterDao.updateRenter(ad);
		if (Flag) {
			System.out.println("true" + ad.getPassword());
		} else {
			System.out.println("false" + ad.getPassword());
		}
	}

	@Test
	public void test05() {
		Landlord landlord = null;
		LandlordDao landlordDao = new LandlordDaoImpl();
		landlord = landlordDao.login(1, "123");
		System.out.println(landlord.getname());
	}

	@Test
	public void test06() {
		Landlord ad = new Landlord("3", "zxc","bb", "asd", "123qwe", "jk", 2);
		boolean Flag = false;
		LandlordDao landlordDao = new LandlordDaoImpl();
		Flag = landlordDao.doLandlord(ad);
		if (Flag) {
			System.out.println("true" + ad.getPassword());
		} else {
			System.out.println("false" + ad.getPassword());
		}
	}

	@Test
	public void test07() {
		Landlord ad = new Landlord("3", "zxc","bb", "asd", "123qwe", "jk", 2);
		boolean Flag = false;
		LandlordDao landlordDao = new LandlordDaoImpl();
		Flag = landlordDao.updatePwd(ad, "admin");
		if (Flag) {
			System.out.println("true" + ad.getPassword());
		} else {
			System.out.println("false" + ad.getPassword());
		}
	}

	@Test
	public void test08() {
		Landlord ad = new Landlord("3", "zxc","bb", "asd", "123qwe", "jk", 2);
		boolean Flag = false;
		LandlordDao landlordDao = new LandlordDaoImpl();
		Flag = landlordDao.updateLandlord(ad);
		if (Flag) {
			System.out.println("true" + ad.getPassword());
		} else {
			System.out.println("false" + ad.getPassword());
		}
	}

	@Test
	public void test09() {
		boolean Flag = false;
		LandlordDao adminDao = new LandlordDaoImpl();
		Flag = adminDao.deleteLandlord(4);
		if (Flag) {
			System.out.println("true");
		} else {
			System.out.println("false");
		}
	}

	@Test
	public void test10() {
		LandlordDao landlordDao = new LandlordDaoImpl();
		for (Landlord t : landlordDao.findLandlord()) {
			System.out.print(t.getdid() + "\t");
			System.out.println(t.getname());
		}
	}

	@Test
	public void test11() {
		LandlordDao landlordDao = new LandlordDaoImpl();
		for (Landlord t : landlordDao.findLandlordByDid(1)) {
			System.out.print(t.getdid() + "\t");
			System.out.println(t.getname());
		}
	}

	@Test
	public void test12() {
		Landlord landlord = null;
		LandlordDao landlordDao = new LandlordDaoImpl();
		landlord = landlordDao.findLandlordBy(4);
		if (landlord != null) {
			System.out.println(landlord.getname());
		} else {
			System.out.println("false");
		}
	}

	@Test
	public void test13() {
		Contract ad = new Contract(1, 1, 1, "asd", "qwe", "12", 100, 21);
		boolean Flag = false;
		ContractDao contractDao = new ContractDaoImpl();
		Flag = contractDao.doContract(ad);
		if (Flag) {
			System.out.println("true" + ad.getDuration());
		} else {
			System.out.println("false" + ad.getDeposit());
		}
	}

	@Test
	public void test14() {
		Contract ad = new Contract(1, 12, 31, "a123sd", "qw1e", "123", 1010, 3421);
		boolean Flag = false;
		ContractDao contractDao = new ContractDaoImpl();
		Flag = contractDao.updateContract(ad);
		if (Flag) {
			System.out.println("true" + ad.getDuration());
		} else {
			System.out.println("false" + ad.getDeposit());
		}
	}

	@Test
	public void test15() {
		boolean Flag = false;
		ContractDao contractDao = new ContractDaoImpl();
		Flag = contractDao.deleteContract(4);
		if (Flag) {
			System.out.println("true");
		} else {
			System.out.println("false");
		}
	}

	@Test
	public void test16() {
		ContractDao contractDao = new ContractDaoImpl();
		for (Contract t : contractDao.findContractByUid2("1")) {
			System.out.print(t.getDeposit() + "\t");
			System.out.println(t.getDuration());
		}
	}
	@Test
	public void test17() {
		ContractDao contractDao = new ContractDaoImpl();
		for (Contract t : contractDao.findContractByAid(1)) {
			System.out.print(t.getDeposit() + "\t");
			System.out.println(t.getDuration());
		}
	}
	@Test
	public void test18() {
		Admin admin=null;
		AdminDao adminDao=new AdminDaoImpl();
		admin = adminDao.login(1, "admin");
		System.out.println(admin.getaid());
	}
	
	@Test
	public void test19() {
		Admin ad=new Admin(123, "bnm");
		boolean Flag = false;
		AdminDao adminDao=new AdminDaoImpl();
		Flag = adminDao.updatePwd(ad, "admin");
		if (Flag) {
			System.out.println("true" + ad.getPassword());
		} else {
			System.out.println("false" + ad.getPassword());
		}
	}
	@Test
	public void test20() {
		PhotoDao photoDao=new PhotoDaoImpl();
		for (Photo t : photoDao.findPhotoByHid(1)) {
			System.out.print(t.getPid() + "\t");
			System.out.println(t.getPath());
		}
	}
	@Test
	public void test21() {
		Photo photo=null;
		PhotoDao photoDao=new PhotoDaoImpl();
		photo=photoDao.findPhotoByPid(1);
		if (photo != null) {
			System.out.println(photo.getPath());
		} else {
			System.out.println("false");
		}
	}
}
