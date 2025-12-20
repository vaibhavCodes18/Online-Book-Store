package com.book.Dao;

import java.util.List;

import com.book.Books;

public interface BookDAO {
	boolean addBook(Books b);
	
	List<Books> getAllBook();
}
