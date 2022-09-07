package com.yedam.java.emp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yedam.java.emp.mapper.EmpMapper;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired
	EmpMapper empMapper;

	@Override
	public List<EmpVO> getEmpList() {
		return empMapper.getEmpList();
	}

	@Override
	public EmpVO getEmp(EmpVO empVO) {
		return empMapper.getEmp(empVO);
	}

	@Override
	public void insertEmp(EmpVO empVO) {
		empMapper.insertEmp(empVO);
	}

	@Override
	public void updateEmp(EmpVO empVO) {
		empMapper.updateEmp(empVO);
	}

	@Override
	public void deleteEmp(EmpVO empVO) {
		empMapper.deleteEmp(Integer.parseInt(empVO.getEmployeeId()));
	}

	@Override
	public EmpVO getMaxEmployeeId() {
		return empMapper.getMaxEmployeeId();
	}

}
