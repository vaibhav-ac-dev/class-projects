package petrolpump.admin.repository;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import petrolpump.admin.config.DBConfig;
import petrolpump.admin.model.EmployeeModel;

public class EmployeeRepositoryImpl extends DBConfig implements EmployeeRepository{

	List<EmployeeModel> list=new ArrayList<EmployeeModel>();
	
	private int empId;
	public int getEmployeeId() {
		try {
			stmt=conn.prepareStatement("select max(eid) from employee");
			rs=stmt.executeQuery();
			if(rs.next()) {
				empId=rs.getInt(1);
			}
			return ++empId;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return -1;
		}
	}
	@Override
	public boolean isAddNewEmployee(EmployeeModel model) {
		try {
			int employeeId=this.getEmployeeId();
			stmt=conn.prepareStatement("insert into employee values(?,?,?,?,?,?)");
			stmt.setInt(1, employeeId);
			stmt.setString(2, model.getName());
			stmt.setString(3, model.getEmail());
			stmt.setString(4, model.getContact());
			stmt.setString(5, model.getAddress());
			stmt.setInt(6, model.getSalary());
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return false;
		}
	}
	@Override
	public List<EmployeeModel> getAllEmployees() {
		// TODO Auto-generated method stub
		try {
			stmt=conn.prepareStatement("select *from employee");
			rs=stmt.executeQuery();
			list.clear();
			while(rs.next()) {
				EmployeeModel emp=new EmployeeModel();
				emp.setId(rs.getInt(1));
				emp.setName(rs.getString(2));
				emp.setEmail(rs.getString(3));
				emp.setContact(rs.getString(4));
				emp.setAddress(rs.getString(5));
				emp.setSalary(rs.getInt(6));
				list.add(emp);
			}
			return list.size()>0?list:null;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return null;
		}
	}
	@Override
	public boolean allocateMachine(int eid, int mid, String... x) {
		// TODO Auto-generated method stub
		try {
			stmt=conn.prepareStatement("insert into employeemachinejoin value(?,?,?,?,?)");
			stmt.setInt(1, eid);
			stmt.setInt(2, mid);
			stmt.setString(3, x[0]);
			stmt.setString(4, x[1]);
			stmt.setDate(5, Date.valueOf(x[2]));
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return false;
		}
	}
	@Override
	public int verifyEmployee(String email, String contact) {
		// TODO Auto-generated method stub
		try {
			stmt=conn.prepareStatement("select *from employee where email=? and contact=?");
			stmt.setString(1, email);
			stmt.setString(2, contact);
			rs=stmt.executeQuery();
			return (rs.next()) ? rs.getInt(1):0;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return 0;
		}
	}
	@Override
	public EmployeeModel getProfile(int employeeId) {
		// TODO Auto-generated method stub
		try {
			stmt=conn.prepareStatement("select *from employee where eid=?");
			stmt.setInt(1, employeeId);
			rs=stmt.executeQuery();
			EmployeeModel e=null;
			if(rs.next()) {
				e=new EmployeeModel();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(2));
				e.setEmail(rs.getString(3));
				e.setContact(rs.getString(4));
				e.setAddress(rs.getString(5));
				e.setSalary(rs.getInt(6));
			}
			return e;
		}
		catch(Exception ex) {
			System.out.println("Error is "+ex);
			return null;
		}
	}

}
