package empportal.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import empportal.dao.EmployeeDao;
import empportal.entities.Employee;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MainController {
	
	@Autowired
	private EmployeeDao empDao;
	
	@RequestMapping("/")
	public String home(Model model) {
		List<Employee> employees = empDao.getEmployees();
		model.addAttribute("employees", employees);
		
		return "index";
	}
	
	@RequestMapping("/add-employee")
	public String addEmployee(Model model) {
		model.addAttribute("title", "Add New Employee");
		
		return "addEmployeeForm";
	}
	
	// Add new EMP to DB
	@RequestMapping(value = "/handle-employee", method = RequestMethod.POST)
	public RedirectView handleEmployee(@ModelAttribute Employee employee,
									   HttpServletRequest request) {
		System.out.println(employee);
		empDao.addEmployee(employee);
		
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/");
		
		return view;
	}
	
	@RequestMapping("/delete-employee/{empId}")
	public RedirectView deleteEmployee(@PathVariable("empId") int empId, HttpServletRequest request) {
		RedirectView view = new RedirectView();
		empDao.deleteEmployee(empId);
		
		view.setUrl(request.getContextPath() + "/");
		return view;
	}
	
	@RequestMapping("/update-employee/{empId}")
	public String handleUpdateEmployee(@PathVariable("empId") int empId, Model model) {
		Employee employee = empDao.getEmployee(empId);
		model.addAttribute("employee", employee);
		
		return "updateEmployeeForm";
	}
}
