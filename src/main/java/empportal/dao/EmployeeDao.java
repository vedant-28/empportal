package empportal.dao;

import java.util.List;
import java.util.Objects;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import empportal.entities.Employee;
import jakarta.transaction.Transactional;

@Component
@Transactional
@EnableTransactionManagement
public class EmployeeDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
	     this.sessionFactory = sessionFactory;
	}
	
	// create/add-update employee
	public void addEmployee(Employee employee) {
		if(Objects.isNull(this.sessionFactory.getCurrentSession().find(Employee.class, employee.getEmpId()))) {
			this.sessionFactory.getCurrentSession().persist(employee);
		} else {
			this.sessionFactory.getCurrentSession().merge(employee);
		}
	}
	
	// Get single employee
	public Employee getEmployee(int empId) {
		Employee employee = this.sessionFactory.getCurrentSession().get(Employee.class, empId);
		return employee;
	}
	
	// Get list of employees
	public List<Employee> getEmployees() {
		List<Employee> employeeList = 
				this.sessionFactory.getCurrentSession().createQuery("FROM Employee", Employee.class).getResultList();
		return employeeList;
	}
	
	// Delete employee by id
	public void deleteEmployee(int empId) {
		Employee employee = this.sessionFactory.getCurrentSession().find(Employee.class, empId);
		this.sessionFactory.getCurrentSession().remove(employee);
	}
}
