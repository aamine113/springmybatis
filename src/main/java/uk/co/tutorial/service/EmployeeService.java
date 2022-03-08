package uk.co.tutorial.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uk.co.tutorial.dao.EmployeeMapper;
import uk.co.tutorial.entity.Employee;

import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;


    public List<Employee> getAllEmployees() {
        return employeeMapper.getAllEmployees();
    }

    public void insertEmployee(Employee employee){
        employeeMapper.saveEmployee(employee);
    }

    public void deleteEmployee(int employeeId) {
        employeeMapper.deleteEmployee(employeeId);
    }

    public Employee getEmployee(int employeeId) {
        return employeeMapper.getEmployee(employeeId);
    }

}
