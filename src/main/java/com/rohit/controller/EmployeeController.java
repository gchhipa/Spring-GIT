package com.rohit.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rohit.model.Employee;
import com.rohit.service.EmployeeService;

@Controller
public class EmployeeController {
	/* Get actual class name to be printed on */
	Logger logger = Logger.getLogger(EmployeeController.class);

	@Autowired
	private EmployeeService employeeService;

	public EmployeeService getEmployeeService() {
		return employeeService;
	}

	@RequestMapping(value = "/employees", produces = { "application/json" }, method = RequestMethod.GET)
	public @ResponseBody List<Employee> getEmployees(Model model) {
		logger.info("EmployeeController : getEmployees() method Invoked");
		return employeeService.getEmployees();
	}

	@RequestMapping(value = "/employee/{empno}", produces = { "application/json" }, method = RequestMethod.GET)
	public @ResponseBody Employee getEmployeeById(@PathVariable("empno") int empno) {
		logger.info("EmployeeController getEmployeeById() method invoked");
		return employeeService.getEmployeeById(empno);
	}
}
