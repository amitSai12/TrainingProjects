package com.java.agent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AgentDAOImpl implements AgentDAO{
	
	Connection connection;
	PreparedStatement pst;

	
//show method ---------------------------------------------------------------------------------
	@Override
	public List<Agent> showAgentDao() throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "Select * from Agent";
		pst = connection.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		List<Agent> agentList = new ArrayList<Agent>();
		Agent agent = null;
		while(rs.next()) {
			agent = new Agent();
			agent.setAgentId(rs.getInt("agentId"));
			agent.setName(rs.getString("name"));
			agent.setCity(rs.getString("city"));
			agent.setGender(Gender.valueOf(rs.getString("gender")));
			agent.setMaritalStatus(rs.getInt("maritalStatus"));
			agent.setPremium(rs.getDouble("premium"));
			agentList.add(agent);
		}		
		return agentList;
	}

//insert method -------------------------------------------------------------------------------------
	@Override
	public String addAgentDao(Agent agent) throws ClassNotFoundException, SQLException {
		
		int agentId = agent.getAgentId();
		connection  = ConnectionHelper.getConnection();
		String cmd = "Insert into Agent(name, city, gender, maritalStatus, premium)"+"values(?,?,?,?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, agent.getName());
		pst.setString(2, agent.getCity());
		pst.setString(3, agent.getGender().toString());
		pst.setInt(4, agent.getMaritalStatus());
		pst.setDouble(5, agent.getPremium());
		pst.executeUpdate();
		return "*** Additional Record Inserted ***";
	}
	
//search method --------------------------------------------------------------------------------------

	@Override
	public Agent searchAgentDao(int agentId) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select * from agent where agentId=?";
		pst = connection.prepareStatement(cmd);
		pst.setInt(1, agentId);
		ResultSet rs = pst.executeQuery();
		List<Agent> agentList = new ArrayList<Agent>();
		Agent agent = null;
		
		if(rs.next()) {
			agent = new Agent();
			
			agent.setAgentId(rs.getInt("agentId"));
			agent.setName(rs.getString("name"));
			agent.setCity(rs.getString("city"));
			agent.setGender(Gender.valueOf(rs.getString("gender")));
			agent.setMaritalStatus(rs.getInt("maritalStatus"));
			agent.setPremium(rs.getDouble("premium"));
		}
		return agent;
	}

//delete method-------------------------------------------------------------------------------------------
	
	@Override
	public String deleteAgentDao(int agentId) throws ClassNotFoundException, SQLException {
		Agent agent = searchAgentDao(agentId);
		if(agent!=null) {
		connection = ConnectionHelper.getConnection();
		String cmd = "Delete from agent where agentId=?";
		pst = connection.prepareStatement(cmd);
		pst.setInt(1, agentId);
		pst.executeUpdate();
		return "***Agent Record Deletd***";
		}
		

	return "****Record not Found***";
	}

//update mehtod ---------------------------------------------------------------
	
	public String updateAgentDao(Agent agentNew) throws ClassNotFoundException, SQLException {

		Agent agentFound = searchAgentDao(agentNew.getAgentId());

		

		if(agentFound!=null) {

			connection = ConnectionHelper.getConnection();

			String cmd = "Update Agent Set Name = ?,City = ?, Gender = ?, MaritalStatus = ?, Premium = ?"+" Where agentId = ?";

			pst = connection.prepareStatement(cmd);

			pst.setString(1,agentNew.getName());

			pst.setString(2,agentNew.getCity());
			
			pst.setString(3,agentNew.getGender().toString());

			pst.setInt(4,agentNew.getMaritalStatus());

			pst.setDouble(5,agentNew.getPremium());
			
			pst.setInt(6,agentNew.getAgentId());

			pst.executeUpdate();

			return "*****Agent Record Updated*****";
	}

		return "***Record Not Found***";

	}	
}