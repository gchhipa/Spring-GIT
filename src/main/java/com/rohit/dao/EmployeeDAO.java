package com.rohit.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.rohit.model.Employee;

@Component
public interface EmployeeDAO {

	public List<Employee> getEmployees();

	public Employee getEmployeeById(int id);	

}