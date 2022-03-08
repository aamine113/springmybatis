package uk.co.tutorial.dao;

import org.springframework.stereotype.Repository;
import uk.co.tutorial.entity.Employee;

import java.util.List;

@Repository
public interface EmployeeMapper {

    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public void deleteEmployee(int employeeId);

    public Employee getEmployee(int employeeId);


}