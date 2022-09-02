package com.yedam.java.emp;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yedam.java.emp.mapper.EmpMapper;
import com.yedam.java.emp.service.EmpVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/*-context.xml")
public class EmpTest {
	@Autowired
	EmpMapper empMapper;

	public void empListTest() {
		List<EmpVO> findList = empMapper.getEmpList();
//		for(EmpVO findVO : findList) {
//			System.out.println(findVO.getLastName());
//		}
	}
	
	@Test
	public void empInfoTest() {
		EmpVO info = new EmpVO();
		info.setEmployeeId("149");
		EmpVO findVO = empMapper.getEmp(info);
		assertNotNull(findVO.getEmail());
		
	}
	
	public void empInsertTest() {
		EmpVO info = new EmpVO();
		info.setEmail("vxxv@naagsver.com");
		info.setFirstName("ajwbu");
		info.setJobId("AD_ASST");
		info.setLastName("ava");
		info.setSalary("1000");
		empMapper.insertEmp(info);
		
		assertEquals(info.getEmployeeId(),"209");
	}
	
	public void empDeleteTest() {
		EmpVO info = new EmpVO();
		info.setEmployeeId("209");
		empMapper.deleteEmp(info);
	}
	
	public void empUpdateSalaryTest() {
		int result = empMapper.updateSalary(149);
		assertEquals(result, 1);
	}
	
	public void empUpdate() {
		EmpVO info = new EmpVO();
		info.setEmail("vxxv@na1111zer.com");
		info.setFirstName("ㅅㄱdaawbu");
		info.setLastName("안녕");
		info.setEmployeeId("100");
		empMapper.updateEmp(info);
	}

	public void empUpdateInfoTest() {
		EmpVO info = new EmpVO();
		info.setEmployeeId("123456");
		info.setFirstName("길동");
		info.setEmail("kead@asnbjkcla.com");
		empMapper.updateEmpTest(info);
	}
}
