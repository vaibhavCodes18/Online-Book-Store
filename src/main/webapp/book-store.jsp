<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Online Book Store</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />
    <style>
      body {
        background-color: #f9fafb;
      }
      .btn-primary {
        background-color: #4f46e5;
        color: white;
      }
      .btn-primary:hover {
        background-color: #4338ca;
      }
      .btn-warning {
        background-color: #f59e0b;
        color: white;
      }
      .btn-warning:hover {
        background-color: #d97706;
      }
      .btn-danger {
        background-color: #dc2626;
        color: white;
      }
      .btn-danger:hover {
        background-color: #b91c1c;
      }
      .btn-success {
        background-color: #10b981;
        color: white;
      }
      .btn-success:hover {
        background-color: #059669;
      }
      .form-input:focus {
        border-color: #4f46e5;
        box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
      }
      .book-row:hover {
        background-color: #f8fafc;
      }
      .edit-form {
        display: none;
      }
      .edit-form.active {
        display: block;
      }
    </style>
  </head>
  <body class="font-sans bg-gray-50">
    <div class="container mx-auto px-4 py-8 max-w-6xl">
      <!-- Header -->
      <header class="mb-10">
        <div class="flex flex-col md:flex-row justify-between items-center">
          <div class="mb-6 md:mb-0">
            <h1 class="text-4xl font-bold text-gray-800">
              <i class="fas fa-book-open text-indigo-600 mr-3"></i>
              Online Book Store
            </h1>
            <p class="text-gray-600 mt-2">
              Browse and manage your book collection
            </p>
          </div>
          <div class="bg-white rounded-lg shadow-sm p-4">
            <div class="flex items-center">
              <div class="w-3 h-3 rounded-full bg-green-500 mr-2"></div>
              <span class="text-gray-700">MVC Architecture - View Only</span>
            </div>
            <div class="text-sm text-gray-500 mt-1">
              Static HTML Implementation
            </div>
          </div>
        </div>
      </header>

      <!-- Add Book Form -->
      <section class="bg-white rounded-xl shadow-md p-6 mb-10">
        <h2 class="text-2xl font-bold text-gray-800 mb-6 flex items-center">
          <i class="fas fa-plus-circle text-indigo-600 mr-3"></i>
          Add New Book
        </h2>

        <form action="#" method="POST" class="space-y-6">
          <input type="hidden" name="action" value="add" />

          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                Book Title <span class="text-red-500">*</span>
              </label>
              <input
                type="text"
                name="title"
                class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input"
                placeholder="Enter book title"
                required
              />
            </div>

            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                Author <span class="text-red-500">*</span>
              </label>
              <input
                type="text"
                name="author"
                class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input"
                placeholder="Enter author name"
                required
              />
            </div>
          </div>

          <div class="flex justify-end">
            <button
              type="submit"
              class="px-6 py-3 rounded-lg font-medium btn-primary"
            >
              <i class="fas fa-save mr-2"></i>
              Add Book to Store
            </button>
          </div>
        </form>
      </section>

      <!-- Book List Section -->
      <section class="bg-white rounded-xl shadow-md p-6 mb-10">
        <div class="flex justify-between items-center mb-6">
          <h2 class="text-2xl font-bold text-gray-800 flex items-center">
            <i class="fas fa-books text-indigo-600 mr-3"></i>
            Available Books
            <span
              class="ml-3 bg-indigo-100 text-indigo-800 text-sm font-semibold px-3 py-1 rounded-full"
            >
              4 books
            </span>
          </h2>

          <div class="text-sm text-gray-500">
            <i class="fas fa-info-circle mr-1"></i>
            Books with zero count are automatically deleted
          </div>
        </div>

        <!-- Book Table -->
        <div class="overflow-x-auto rounded-lg border border-gray-200">
          <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gray-50">
              <tr>
                <th
                  class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"
                >
                  ID
                </th>
                <th
                  class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"
                >
                  Book Title
                </th>
                <th
                  class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"
                >
                  Author
                </th>
                <th
                  class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"
                >
                  Status
                </th>
                <th
                  class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider"
                >
                  Actions
                </th>
              </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
              <!-- Book 1 -->
              <tr class="book-row">
                <td
                  class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"
                >
                  101
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm font-medium text-gray-900">
                    The Great Gatsby
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                  F. Scott Fitzgerald
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <span
                    class="px-3 py-1 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800"
                  >
                    <i class="fas fa-check mr-1"></i> In Stock
                  </span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                  <div class="flex space-x-2">
                    <!-- Edit Button - Shows the edit form for this book -->
                    <button
                      onclick="showEditForm('101', 'The Great Gatsby', 'F. Scott Fitzgerald')"
                      class="btn-warning px-4 py-2 rounded-md text-sm flex items-center"
                    >
                      <i class="fas fa-edit mr-1"></i> Edit
                    </button>

                    <!-- Delete Button -->
                    <form action="#" method="POST" class="inline">
                      <input type="hidden" name="action" value="delete" />
                      <input type="hidden" name="id" value="101" />
                      <button
                        type="submit"
                        class="btn-danger px-4 py-2 rounded-md text-sm flex items-center"
                        onclick="return confirm('Delete this book?')"
                      >
                        <i class="fas fa-trash mr-1"></i> Delete
                      </button>
                    </form>
                  </div>
                </td>
              </tr>

              <!-- Book 2 -->
              <tr class="book-row">
                <td
                  class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"
                >
                  102
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm font-medium text-gray-900">
                    To Kill a Mockingbird
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                  Harper Lee
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <span
                    class="px-3 py-1 inline-flex text-xs leading-5 font-semibold rounded-full bg-yellow-100 text-yellow-800"
                  >
                    <i class="fas fa-exclamation-triangle mr-1"></i> Low Stock
                  </span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                  <div class="flex space-x-2">
                    <button
                      onclick="showEditForm('102', 'To Kill a Mockingbird', 'Harper Lee')"
                      class="btn-warning px-4 py-2 rounded-md text-sm flex items-center"
                    >
                      <i class="fas fa-edit mr-1"></i> Edit
                    </button>

                    <form action="#" method="POST" class="inline">
                      <input type="hidden" name="action" value="delete" />
                      <input type="hidden" name="id" value="102" />
                      <button
                        type="submit"
                        class="btn-danger px-4 py-2 rounded-md text-sm flex items-center"
                        onclick="return confirm('Delete this book?')"
                      >
                        <i class="fas fa-trash mr-1"></i> Delete
                      </button>
                    </form>
                  </div>
                </td>
              </tr>

              <!-- Book 3 -->
              <tr class="book-row">
                <td
                  class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"
                >
                  103
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm font-medium text-gray-900">1984</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                  George Orwell
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <span
                    class="px-3 py-1 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800"
                  >
                    <i class="fas fa-check mr-1"></i> In Stock
                  </span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                  <div class="flex space-x-2">
                    <button
                      onclick="showEditForm('103', '1984', 'George Orwell')"
                      class="btn-warning px-4 py-2 rounded-md text-sm flex items-center"
                    >
                      <i class="fas fa-edit mr-1"></i> Edit
                    </button>

                    <form action="#" method="POST" class="inline">
                      <input type="hidden" name="action" value="delete" />
                      <input type="hidden" name="id" value="103" />
                      <button
                        type="submit"
                        class="btn-danger px-4 py-2 rounded-md text-sm flex items-center"
                        onclick="return confirm('Delete this book?')"
                      >
                        <i class="fas fa-trash mr-1"></i> Delete
                      </button>
                    </form>
                  </div>
                </td>
              </tr>

              <!-- Book 4 (Zero count) -->
              <tr class="book-row bg-red-50">
                <td
                  class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"
                >
                  104
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm font-medium text-gray-900">
                    Pride and Prejudice
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                  Jane Austen
                </td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <span
                    class="px-3 py-1 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800"
                  >
                    <i class="fas fa-times mr-1"></i> Out of Stock
                  </span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                  <div class="flex space-x-2">
                    <button
                      onclick="showEditForm('104', 'Pride and Prejudice', 'Jane Austen')"
                      class="btn-warning px-4 py-2 rounded-md text-sm flex items-center"
                    >
                      <i class="fas fa-edit mr-1"></i> Edit
                    </button>

                    <form action="#" method="POST" class="inline">
                      <input type="hidden" name="action" value="delete" />
                      <input type="hidden" name="id" value="104" />
                      <button
                        type="submit"
                        class="btn-danger px-4 py-2 rounded-md text-sm flex items-center"
                        onclick="return confirm('Delete this book? This book has zero count.')"
                      >
                        <i class="fas fa-trash mr-1"></i> Delete
                      </button>
                    </form>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </section>

      <!-- Edit Book Section -->
      <section
        class="bg-white rounded-xl shadow-md p-6 border-l-4 border-yellow-500"
      >
        <div class="flex items-center justify-between mb-6">
          <h2 class="text-2xl font-bold text-gray-800 flex items-center">
            <i class="fas fa-edit text-yellow-600 mr-3"></i>
            Edit Book
          </h2>
          <div
            id="editing-indicator"
            class="hidden bg-yellow-100 text-yellow-800 text-sm font-medium px-4 py-2 rounded-full"
          >
            <i class="fas fa-pen mr-2"></i>Editing Book ID:
            <span id="current-edit-id"></span>
          </div>
        </div>

        <!-- Edit Form (Initially hidden, appears when Edit is clicked) -->
        <div
          id="edit-form-placeholder"
          class="text-center py-12 border-2 border-dashed border-gray-300 rounded-lg bg-gray-50"
        >
          <i class="fas fa-edit text-gray-400 text-4xl mb-4"></i>
          <h3 class="text-lg font-medium text-gray-700 mb-2">
            No Book Selected for Editing
          </h3>
          <p class="text-gray-500">
            Click the "Edit" button on any book above to edit its details
          </p>
        </div>

        <form
          id="edit-book-form"
          action="#"
          method="POST"
          class="edit-form space-y-6 mt-6"
        >
          <input type="hidden" name="action" value="update" />
          <input type="hidden" id="edit-id" name="id" />

          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                Book Title <span class="text-red-500">*</span>
              </label>
              <input
                type="text"
                id="edit-title"
                name="title"
                class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input"
                placeholder="Enter book title"
                required
              />
            </div>

            <div>
              <label class="block text-sm font-medium text-gray-700 mb-2">
                Author <span class="text-red-500">*</span>
              </label>
              <input
                type="text"
                id="edit-author"
                name="author"
                class="w-full px-4 py-3 border border-gray-300 rounded-lg form-input"
                placeholder="Enter author name"
                required
              />
            </div>
          </div>

          <div
            class="flex flex-col sm:flex-row justify-between items-center p-4 bg-yellow-50 rounded-lg border border-yellow-200"
          >
            <div class="mb-4 sm:mb-0">
              <div class="flex items-center text-sm text-yellow-800">
                <i class="fas fa-exclamation-circle mr-2"></i>
                <span
                  >Editing Book ID:
                  <span id="edit-id-display" class="font-bold"></span
                ></span>
              </div>
            </div>

            <div class="flex space-x-3">
              <button
                type="button"
                onclick="cancelEdit()"
                class="px-5 py-3 border border-gray-300 rounded-lg text-gray-700 font-medium hover:bg-gray-50"
              >
                Cancel Edit
              </button>
              <button
                type="submit"
                class="px-6 py-3 rounded-lg font-medium btn-success"
              >
                <i class="fas fa-check-circle mr-2"></i>
                Update Book
              </button>
            </div>
          </div>
        </form>
      </section>

      <!-- MVC Architecture Info -->
      <footer class="mt-12 pt-8 border-t border-gray-200">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="bg-white p-5 rounded-lg shadow-sm border border-gray-100">
            <h4 class="font-bold text-gray-800 mb-3 flex items-center">
              <i class="fas fa-book mr-2 text-indigo-600"></i>
              Book Entity
            </h4>
            <ul class="text-gray-600 space-y-2">
              <li class="flex items-center">
                <i class="fas fa-hashtag text-gray-400 mr-2"></i>
                <span class="font-mono">Id</span>
              </li>
              <li class="flex items-center">
                <i class="fas fa-heading text-gray-400 mr-2"></i>
                <span class="font-mono">Title</span>
              </li>
              <li class="flex items-center">
                <i class="fas fa-user-edit text-gray-400 mr-2"></i>
                <span class="font-mono">Author</span>
              </li>
            </ul>
          </div>

          <div class="bg-white p-5 rounded-lg shadow-sm border border-gray-100">
            <h4 class="font-bold text-gray-800 mb-3 flex items-center">
              <i class="fas fa-cogs mr-2 text-indigo-600"></i>
              BookServlet (Controller)
            </h4>
            <p class="text-gray-600">
              In a real MVC application, this would handle:
            </p>
            <div class="mt-3 space-y-2 text-sm">
              <div class="flex items-center">
                <i class="fas fa-plus-circle text-green-500 mr-2"></i>
                <span class="text-gray-600">Adding new books</span>
              </div>
              <div class="flex items-center">
                <i class="fas fa-edit text-yellow-500 mr-2"></i>
                <span class="text-gray-600">Updating book details</span>
              </div>
              <div class="flex items-center">
                <i class="fas fa-trash-alt text-red-500 mr-2"></i>
                <span class="text-gray-600">Deleting books</span>
              </div>
            </div>
          </div>

          <div class="bg-white p-5 rounded-lg shadow-sm border border-gray-100">
            <h4 class="font-bold text-gray-800 mb-3 flex items-center">
              <i class="fas fa-eye mr-2 text-indigo-600"></i>
              This Page (View)
            </h4>
            <p class="text-gray-600">
              Displays the UI and sends form data to the controller.
            </p>
            <div class="mt-3 text-sm text-gray-500">
              Form actions are set to "#" for this static example
            </div>
          </div>
        </div>

        <div class="mt-8 text-center text-gray-500 text-sm">
          <p>Online Book Store MVC Application - Static HTML Implementation</p>
          <p class="mt-1">
            In a real application, forms would submit to
            <code class="bg-gray-100 px-2 py-1 rounded">BookServlet</code>
          </p>
        </div>
      </footer>
    </div>

    <script>
      // Simple JavaScript to handle showing/hiding edit form
      function showEditForm(id, title, author) {
        // Hide placeholder
        document.getElementById("edit-form-placeholder").style.display = "none";

        // Show edit form
        const editForm = document.getElementById("edit-book-form");
        editForm.style.display = "block";

        // Populate form fields
        document.getElementById("edit-id").value = id;
        document.getElementById("edit-title").value = title;
        document.getElementById("edit-author").value = author;
        document.getElementById("edit-id-display").textContent = id;

        // Show editing indicator
        const indicator = document.getElementById("editing-indicator");
        indicator.classList.remove("hidden");
        document.getElementById("current-edit-id").textContent = id;

        // Scroll to edit form
        editForm.scrollIntoView({ behavior: "smooth" });
      }

      function cancelEdit() {
        // Hide edit form
        document.getElementById("edit-book-form").style.display = "none";

        // Show placeholder
        document.getElementById("edit-form-placeholder").style.display =
          "block";

        // Hide editing indicator
        document.getElementById("editing-indicator").classList.add("hidden");

        // Clear form
        document.getElementById("edit-id").value = "";
        document.getElementById("edit-title").value = "";
        document.getElementById("edit-author").value = "";
      }

      // Handle form submission
      document
        .getElementById("edit-book-form")
        .addEventListener("submit", function (e) {
          e.preventDefault();
          const id = document.getElementById("edit-id").value;
          const title = document.getElementById("edit-title").value;
          const author = document.getElementById("edit-author").value;

          alert(
            `Book ID ${id} updated!\nTitle: ${title}\nAuthor: ${author}\n\nIn a real application, this would be sent to BookServlet.`
          );

          // Reset form
          cancelEdit();
        });

      // Handle add form submission
      document
        .querySelector('form[action="#"] input[name="action"][value="add"]')
        .closest("form")
        .addEventListener("submit", function (e) {
          e.preventDefault();
          const title = this.querySelector('input[name="title"]').value;
          const author = this.querySelector('input[name="author"]').value;

          alert(
            `New book added!\nTitle: ${title}\nAuthor: ${author}\n\nIn a real application, this would be sent to BookServlet.`
          );
          this.reset();
        });
    </script>
  </body>
</html>
    