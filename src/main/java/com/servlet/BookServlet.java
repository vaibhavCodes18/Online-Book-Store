package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;
import java.io.IOException;

import com.book.Books;
import com.book.Dao.BookDAO;
import com.book.Dao.BookDAOImpl;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String action = req.getParameter("action");
		BookDAO book = new BookDAOImpl();
		if(action.equals("list")) {
			List<Books> books = book.getAllBook();
			req.setAttribute("allbooks", books);
			req.getRequestDispatcher("book-store.jsp").forward(req, res);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String action = req.getParameter("action");
		String bookTitle = req.getParameter("title");
		String bookAuthor = req.getParameter("author");
		int bookQty= Integer.parseInt(req.getParameter("quantity"));
		int id = Integer.parseInt(req.getParameter("id"));
		
		BookDAO book = new BookDAOImpl();
		
		if(action.equals("add")) {
			Books b = new Books();
			b.setBookName(bookTitle);
			b.setAuthorName(bookAuthor);
			b.setQuantity(bookQty);
			boolean addResult = book.addBook(b);
			if(addResult) {
				res.sendRedirect("book-added.html");
			}
		}
		
		if ("update".equals(action)) {
		    
		    System.out.println(id);
		    System.out.println(bookTitle);
		    System.out.println(bookAuthor);
		    System.out.println(bookQty);
		}
		
		
	}

}
