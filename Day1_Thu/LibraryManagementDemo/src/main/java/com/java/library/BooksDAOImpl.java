package com.java.library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class BooksDAOImpl implements BooksDAO {

	@Override
	public List<Books> showBooks(String searchValue) throws ClassNotFoundException, SQLException {
		Connection connection = ConnectionHelper.getConnection();
            String sql = "SELECT * FROM book";
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("ID");
                String title = rs.getString("Title");
                String author = rs.getString("Author");
                String edition = rs.getString("Edition");
                String language = rs.getString("Language");
                int availableCopies = rs.getInt("AvailableCopies");
			
            }
			return null;	

	}
}
