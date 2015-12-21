package com.rohit.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.rohit.model.Employee;
@Component
public interface EmployeeService {

	public List<Employee> getEmployees();

	public Employee getEmployeeById(int id);
}
