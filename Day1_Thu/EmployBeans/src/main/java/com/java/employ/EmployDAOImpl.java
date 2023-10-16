package com.java.employ;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployDAOImpl implements EmployDAO {
	
	Connection connection;
	PreparedStatement pst;
	
//show method -------------------------------------------------------------------------------
	
	@Override
	public List<Employ> showEmployDao() throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select * from employ";
		pst = connection.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		List<Employ> employList = new ArrayList<Employ>();
		Employ employ = null;
		while(rs.next()) {
			employ = new Employ();
			employ.setEmpno(rs.getInt("empno"));	
			employ.setName(rs.getString("name"));
			employ.setGender(Gender.valueOf(rs.getString("gender")));
			employ.setDept(rs.getString("dept"));
			employ.setDesig(rs.getString("desig"));
			employ.setBasic(rs.getDouble("basic"));
			employList.add(employ);
		}
	return employList;
	}
	
//search method ---------------------------------------------------------------------------------
	
	@Override
	public Employ searchEmployDao(int empno) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select * from employ where empno=?";
		pst = connection.prepareStatement(cmd);
		pst.setInt(1, empno);
		ResultSet rs = pst.executeQuery();
		List<Employ> employList = new ArrayList<Employ>();
		Employ employ = null;
		
		if(rs.next()) {
			employ = new Employ();

			employ.setEmpno(rs.getInt("empno"));	
			employ.setName(rs.getString("name"));
			employ.setGender(Gender.valueOf(rs.getString("gender")));
			employ.setDept(rs.getString("dept"));
			employ.setDesig(rs.getString("desig"));
			employ.setBasic(rs.getDouble("basic"));
		}
		return employ;
		
	}
	
//add() -------------------------------------------------------------------------------------
	
	@Override
	public String addEmployDao(Employ employ) throws ClassNotFoundException, SQLException {
		
		connection = ConnectionHelper.getConnection();
		String cmd = "Insert into Employ(Empno, name, gender, dept, desig,basic)"+"values(?,?,?,?,?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setInt(1,employ.getEmpno());
		pst.setString(2,employ.getName());
		pst.setString(3,employ.getGender().toString());
		pst.setString(4,employ.getDept());
		pst.setString(5,employ.getDesig() );
		pst.setDouble(6, employ.getBasic());
		pst.executeUpdate();
		return "***Record Inserted***";	
	}

//delete() ----------------------------------------------------------------------------------------
	

	@Override
	public String deleteEmployDao(int empno) throws ClassNotFoundException, SQLException {
		Employ employ = searchEmployDao(empno);
		if(employ!=null) {
		connection = ConnectionHelper.getConnection();
		String cmd = "Delete from employ where empno=?";
		pst = connection.prepareStatement(cmd);
		pst.setInt(1, empno);
		pst.executeUpdate();
		return "***Employ Record Deletd***";
		}
		

	return "****Record not Found***";
	}

//update()------------------------------------------------------------------------

	public String updateEmployDao(Employ employnew) throws ClassNotFoundException, SQLException {

		// TODO Auto-generated method stub

		Employ employFound = searchEmployDao(employnew.getEmpno());

		if(employFound != null) {

			connection = ConnectionHelper.getConnection();

			String cmd="Update Employ set Name=?,Gender=?,Dept=?,Desig=?,Basic=? where Empno=?";

			pst=connection.prepareStatement(cmd);

			pst.setString(1, employnew.getName());

			pst.setString(2, employnew.getGender().toString());

			pst.setString(3, employnew.getDept());

			pst.setString(4, employnew.getDesig());

			pst.setDouble(5, employnew.getBasic());

			pst.setInt(6, employnew.getEmpno());

			pst.executeUpdate();

			return "Employ Record Updated....";

		}

		return "Employ Record Not Found.....";

	}
}





