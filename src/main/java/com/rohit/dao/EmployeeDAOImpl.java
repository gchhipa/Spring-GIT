package com.rohit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rohit.model.Employee;
import com.rohit.util.HibernateUtil;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	private SessionFactory factory = HibernateUtil.getSessionFactory();
	private Session session;

	@Override
	public List<Employee> getEmployees() {
		session = factory.openSession();
		return session.createQuery("from Employee").list();
	}

	@Override
	public Employee getEmployeeById(int id) {
		session = factory.openSession();
		return (Employee) session.load(Employee.class, id);

	}

}
