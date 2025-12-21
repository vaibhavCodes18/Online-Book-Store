package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;

import com.book.Books;
import com.book.Dao.BookDAO;
import com.book.Dao.BookDAOImpl;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookServlet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		res.setContentType("html/text");
		String action = req.getParameter("action");
		BookDAO book = new BookDAOImpl();
		
		boolean deleteBookIfZero = book.deleteBooKIfQtyZero();
		if(deleteBookIfZero) {
			res.sendRedirect("BookServlet?action=list");
		}
		
		if(action.equals("list")) {
			List<Books> books = book.getAllBook();
			if(books!=null) {
				req.setAttribute("allbooks", books);
				req.getRequestDispatcher("book-store.jsp").forward(req, res);
			}else {
				out.println("<p>Books was not get.</p>");
			}
			
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		res.setContentType("html/text");
		String action = req.getParameter("action");
		String bookTitle = req.getParameter("title");
		String bookAuthor = req.getParameter("author");
		int bookQty= req.getParameter("quantity") != null ? Integer.parseInt(req.getParameter("quantity")) : 0;
		int id = req.getParameter("id") != null ? Integer.parseInt(req.getParameter("id")) : 0;
		
		BookDAO book = new BookDAOImpl();
		
		boolean deleteBookIfZero = book.deleteBooKIfQtyZero();
		if(deleteBookIfZero) {
			res.sendRedirect("BookServlet?action=list");
		}
		
		if(action.equals("add")) {
			Books b = new Books();
			b.setBookName(bookTitle);
			b.setAuthorName(bookAuthor);
			b.setQuantity(bookQty);
			boolean addResult = book.addBook(b);
			if(addResult) {
				res.sendRedirect("book-added.html");
			}else {
				out.println("<p>Book was not added</p>");
			}
		}
		
		if (action.equals("update")) {
			Books b = new Books();
		    b.setId(id);
		    b.setBookName(bookTitle);
			b.setAuthorName(bookAuthor);
			b.setQuantity(bookQty);
			
			boolean updateBook = book.updateBook(b);
			if(updateBook) {
				res.sendRedirect("book-updated.html");
			}else {
				out.println("<p>Book was not updated</p>");
			}
		}
		
		if (action.equals("delete")) {
			boolean deletedBook = book.deleteBook(id);
			if(deletedBook) {
				res.sendRedirect("book-deleted.html");
			}else {
				out.println("<p>Book was deleted</p>");
			}
		}
	}
}
