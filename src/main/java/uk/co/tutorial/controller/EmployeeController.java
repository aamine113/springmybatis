package uk.co.tutorial.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import uk.co.tutorial.entity.Employee;
import uk.co.tutorial.service.EmployeeService;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/")
    public String welcome(){
        return "../index";
    }

    @RequestMapping("/getEmployees")
    public ModelAndView getEmployees() {
        ModelAndView mav = new ModelAndView("list-employee");
        mav.addObject("listEmployees", employeeService.getAllEmployees());
        return mav;
    }

    @RequestMapping("/showFormForAddEmployee")
    public ModelAndView showForm() {
        ModelAndView mav = new ModelAndView("add-employee");
        mav.addObject("employee", new Employee());
        return mav;
    }

    @RequestMapping("/saveProcess")
    public String saveProcess(@ModelAttribute Employee employee) {
        try {
            if (employee.getId() == null) {
                employeeService.insertEmployee(employee);
            }
            else {
                employeeService.updateEmployee(employee);
            }
            return "redirect:/";
        }
        catch (Exception e) {
            return "error";
        }
    }

    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("employeeId") int id) {
        employeeService.deleteEmployee(id);
        return "redirect:/getEmployees";
    }

    @RequestMapping("/editEmployee")
    public ModelAndView editEmployee(@RequestParam("employeeId") int id) {
        ModelAndView modelAndView = new ModelAndView("add-employee");
        Employee employee = employeeService.getEmployee(id);
        modelAndView.addObject("employee", employee);
        return modelAndView;
    }


}
