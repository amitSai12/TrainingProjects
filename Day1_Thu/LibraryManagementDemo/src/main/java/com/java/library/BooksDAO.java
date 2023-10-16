package com.java.library;

import java.sql.SQLException;
import java.util.List;

public interface BooksDAO {
	
	List<Books> showBooks(String searchValue) throws ClassNotFoundException, SQLException;
}
