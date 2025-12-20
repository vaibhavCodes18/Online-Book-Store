# Online Book Store – MVC Architecture (Java)

This project is a simple **Online Book Store web application** built using **Java MVC architecture**.  
It demonstrates how to structure a Java Dynamic Web Project using **Servlets, JSP, JDBC, and MySQL** while following industry best practices.

---

## MVC Architecture Used

### Model
- `Book` (Entity)
- Represents book data such as id, title, author, and quantity
- Used to transfer data between layers

### View
- `index.jsp`
- Displays the list of books
- Provides UI for adding, editing, and deleting books

### Controller
- `BookServlet`
- Handles all incoming requests
- Controls application flow using action-based routing
- Communicates with the Model and forwards data to the View

---

## Technologies Used

- Java (Core Java)
- Servlet
- JSP
- JDBC
- MySQL
- Apache Tomcat
- Eclipse IDE
- Git & GitHub

---

## Functional Requirements

- Display the list of books available in the store
- Add a new book
- Edit book details
- Reduce book quantity
- Delete a book automatically when quantity becomes zero

---

## Database Design

**Table: books**

| Column   | Type        | Description              |
|--------|-------------|--------------------------|
| id     | INT (PK)    | Unique book identifier   |
| title  | VARCHAR     | Book title               |
| author | VARCHAR     | Book author              |
| quantity | INT       | Available book count     |

---

## Request Flow (High Level)

1. User sends a request from the browser
2. Request reaches `BookServlet`
3. Servlet reads the `action` parameter
4. Corresponding business logic is executed
5. Data is forwarded to `index.jsp`
6. View renders the response

---

## Project Structure

OnlineBookStoreMVC/
│
├── README.md
├── build/
│   └── classes/
│       └── com/
│           ├── book/
│           └── servlet/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       ├── book/
│       │       │   └── Books.java
│       │       └── servlet/
│       │           └── AddBookServlet.java
│       └── webapp/
│           ├── book-store.jsp
│           ├── index.html
│           ├── META-INF/
│           │   └── MANIFEST.MF
│           └── WEB-INF/
│               ├── web.xml
│               └── lib/

---

## How to Run the Project

1. Clone the repository
2. Import the project into Eclipse as a Dynamic Web Project
3. Configure Apache Tomcat server
4. Run the SQL script to create the database
5. Update database credentials if needed
6. Run the project on the server
7. Access the application via browser

---

## Key Learning Outcomes

- Practical understanding of MVC architecture
- Servlet request handling and routing
- JSP-based view rendering
- JDBC CRUD operations
- Clean separation of concerns
- Industry-style project structure

---

## Future Enhancements

- User authentication
- Search and filter books
- Pagination
- RESTful API support
- Frontend improvements using CSS or frameworks

---

## Author

**Vaibhav Sathe**  
Java Developer | Learning Full Stack Java Development

---

## License

This project is for learning and educational purposes.
