package com.book.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.book.Books;
import com.util.DBUtil;

public class BookDAOImpl implements BookDAO {

	@Override
	public boolean addBook(Books b) {
		String sql = "INSERT INTO books (title, author, quantity) VALUES(?,?,?)";
		
		try ( Connection con = DBUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);){
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthorName());
			ps.setInt(3, b.getQuantity());
			
			int i =ps.executeUpdate();
			con.close();
			return i>0;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Books> getAllBook() {
		String sql = "SELECT * FROM books";
		List<Books> book = new ArrayList();
		
		try ( Connection con = DBUtil.getConnection();
			  PreparedStatement ps = con.prepareStatement(sql);){
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Books b = new Books();
				b.setId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthorName(rs.getString(3));
				b.setQuantity(rs.getInt(4));
				book.add(b);
			}
			return book;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

	@Override
	public boolean updateBook(Books b) {
		String sql = "UPDATE books SET title = ?, author = ?, quantity = ? WHERE id = ?";
		try(Connection con = DBUtil.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);){
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthorName());
			ps.setInt(3, b.getQuantity());
			ps.setInt(4, b.getId());
			
			int i = ps.executeUpdate();
			return i>0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteBook(int id) {
		String sql = "DELETE FROM books WHERE id = ?";
		try(Connection con = DBUtil.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);){
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			return i>0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
