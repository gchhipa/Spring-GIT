package com.rohit.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Employee implements Serializable {

	private static final long serialVersionUID = 1L;

	public Employee() {
	}

	@Id
	@GeneratedValue
	private int empno;

	@Column
	private String empname;

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEmpname() {
		return empname;
	}

	public void setEmpname(String empname) {
		this.empname = empname;
	}

	@Override
	public String toString() {
		return "Employee [empno=" + empno + ", empname=" + empname + "]";
	}

}
