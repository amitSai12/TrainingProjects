package com.java.library;

import java.sql.SQLException;
import java.util.List;

public interface LibraryDAO {

	String createUser(LibUsers libUsers) throws ClassNotFoundException, SQLException;
	
	int authenticate(LibUsers libUsers) throws ClassNotFoundException, SQLException;
	
	List<Books> searchBooks(String searchType, String searchValue) throws ClassNotFoundException, SQLException;
	
	String updateBooks(int bookId,String user) throws ClassNotFoundException, SQLException;
	
	Books getBookById(int Id) throws ClassNotFoundException, SQLException;
	
	Books getBookByUser(String User) throws ClassNotFoundException, SQLException;
	
	List<Books> returnBook() throws ClassNotFoundException, SQLException;

	String returnBooks(int bookId, String userName) throws ClassNotFoundException, SQLException;
}

	