package uk.co.tutorial.impl;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import org.apache.ibatis.session.SqlSession;
import uk.co.tutorial.dao.EmployeeMapper;
import uk.co.tutorial.entity.Employee;
import uk.co.tutorial.util.MyBatisUtil;

import java.sql.SQLException;
import java.util.List;

public class EmployeeMapperImpl implements EmployeeMapper {

    private SqlSession sqlSession;

    @Override
    public List<Employee> getAllEmployees() {
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        List<Employee> allEmployees = sqlSession.selectList("getAllEmployees");
        sqlSession.commit();
        sqlSession.close();

        return allEmployees;
    }

    @Override
    public void saveEmployee(Employee employee) {
        try{
            SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            sqlSession.insert("insertEmployee", employee);
            sqlSession.commit();
            sqlSession.close();
        }
        catch (Exception e){
            System.out.println("Error occured when inserting employee : " + e);
        }
    }

    @Override
    public void deleteEmployee(int employeeId) {
        try {
            SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            sqlSession.delete("deleteEmployee", employeeId);
            sqlSession.commit();
            sqlSession.close();
        }
        catch (Exception e) {
            System.out.println("Error occured when deleting employee : " + e);
        }
    }

    @Override
    public Employee getEmployee(int employeeId) {
        try {
            SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            Employee employee = (Employee) sqlSession.selectOne("getEmployee", employeeId);
            sqlSession.commit();
            sqlSession.close();
            return employee;
        }
        catch (Exception e) {
            System.out.println("Error occured when selecting employee : " + e);
        }
        return null;
    }
}