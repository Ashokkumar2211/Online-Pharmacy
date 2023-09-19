
// Sample product data with categories
const products = [
    { name: 'Product 1', description: 'Description of Product 1.', price: '$19.99', category: 'category1' },
    { name: 'Product 2', description: 'Description of Product 2.', price: '$24.99', category: 'category2' },
    { name: 'Product 3', description: 'Description of Product 3.', price: '$29.99', category: 'category1' },
    { name: 'Product 4', description: 'Description of Product 4.', price: '$29.99', category: 'category1' },
    { name: 'Product 5', description: 'Description of Product 5.', price: '$29.99', category: 'category1' },
    { name: 'Product 6', description: 'Description of Product 6.', price: '$29.99', category: 'category1' },
    { name: 'Product 7', description: 'Description of Product 7.', price: '$29.99', category: 'category1' },
    { name: 'Product 8', description: 'Description of Product 8.', price: '$29.99', category: 'category1' },
    { name: 'Product 9', description: 'Description of Product 9.', price: '$29.99', category: 'category1' },
    { name: 'Product 10', description: 'Description of Product 10.', price: '$29.99', category: 'category1' },
    { name: 'Product 11', description: 'Description of Product 11.', price: '$29.99', category: 'category1' },
    { name: 'Product 12', description: 'Description of Product 12.', price: '$29.99', category: 'category1' },
    { name: 'Product 13', description: 'Description of Product 13.', price: '$29.99', category: 'category1' },
    { name: 'Product 14', description: 'Description of Product 14.', price: '$19.99', category: 'category1' },
    { name: 'Product 15', description: 'Description of Product 15.', price: '$24.99', category: 'category2' },
    { name: 'Product 16', description: 'Description of Product 16.', price: '$29.99', category: 'category1' },
    { name: 'Product 17', description: 'Description of Product 17.', price: '$29.99', category: 'category1' },
    { name: 'Product 18', description: 'Description of Product 18.', price: '$29.99', category: 'category1' },
    { name: 'Product 19', description: 'Description of Product 19.', price: '$29.99', category: 'category1' },
    { name: 'Product 20', description: 'Description of Product 20.', price: '$29.99', category: 'category1' },
    { name: 'Product 21', description: 'Description of Product 21.', price: '$29.99', category: 'category1' },
    { name: 'Product 22', description: 'Description of Product 22.', price: '$29.99', category: 'category1' },
    { name: 'Product 23', description: 'Description of Product 23.', price: '$29.99', category: 'category1' },
    { name: 'Product 24', description: 'Description of Product 24.', price: '$29.99', category: 'category1' },
    { name: 'Product 25', description: 'Description of Product 25.', price: '$29.99', category: 'category1' },
    { name: 'Product 26', description: 'Description of Product 26.', price: '$29.99', category: 'category1' },
    { name: 'Product 27', description: 'Description of Product 27.', price: '$29.99', category: 'category1' }
    // Add more product objects with categories as needed
];

// Define the number of products to display per page
const productsPerPage = 9;

// Initialize the current page index
let currentPage = 0;

// Initialize productsToShow array
let productsToShow = [];

// Get references to the "Next" and "Previous" buttons
const nextButton = document.getElementById('nextButton');
const prevButton = document.getElementById('prevButton');

// Get references to the search input field and search button
const searchInput = document.getElementById('searchInput');
const searchButton = document.getElementById('searchButton');

// Get references to the sorting and filtering controls
const sortBySelect = document.getElementById('sortBy');
const categorySelect = document.getElementById('category');
const applyFiltersButton = document.getElementById('applyFilters');

// Get a reference to the product details section
const productDetailsSection = document.getElementById('productDetails');

// Function to display products on the current page
function displayProducts() {
    // Calculate startIndex and endIndex based on currentPage and productsPerPage
    const startIndex = currentPage * productsPerPage;
    const endIndex = startIndex + productsPerPage;

    // Get a reference to the main container where products will be displayed
    const productContainer = document.querySelector('main');

    // Clear the existing product sections
    productContainer.innerHTML = '';

    // Loop through products and display them on the current page
    for (let i = startIndex; i < endIndex && i < productsToShow.length; i++) {
        const product = productsToShow[i];

        // Create a new product section element
        const productSection = document.createElement('section');
        productSection.classList.add('product');

        // Set the HTML content of the product section
        productSection.innerHTML = `
            <img src="product${i + 1}.jpg" alt="${product.name}">
            <h2>${product.name}</h2>
            <p>${product.description}</p>
            <p><strong>Price:</strong> ${product.price}</p>
            <button onclick="openModal(${i})">Show Details</button>
        `;

        // Append the product section to the main container
        productContainer.appendChild(productSection);
    }

    // Enable/disable navigation buttons based on the current page
    prevButton.disabled = currentPage === 0;
    nextButton.disabled = endIndex >= productsToShow.length;
}

// Function to apply sorting and filtering
function applyFilters() {
    const sortBy = sortBySelect.value;
    const categoryFilter = categorySelect.value;

    // Apply sorting
    productsToShow.sort((a, b) => {
        if (sortBy === 'name') {
            return a.name.localeCompare(b.name);
        } else if (sortBy === 'price') {
            return parseFloat(a.price) - parseFloat(b.price);
        }
    });

    // Apply filtering
    productsToShow = categoryFilter === 'all'
        ? products.slice() // Clone the original array
        : products.filter(product => product.category === categoryFilter);

    // Reset to the first page after filtering
    currentPage = 0;

    // Display the filtered products
    displayProducts();
}

// Event listener for the "Apply Filters" button
applyFiltersButton.addEventListener('click', () => {
    applyFilters();
});

// Event listener for changes in sorting and filtering options
sortBySelect.addEventListener('change', () => {
    applyFilters();
});

categorySelect.addEventListener('change', () => {
    applyFilters();
});

// Function to perform the search
function performSearch() {
    const searchTerm = searchInput.value.toLowerCase();

    // Filter products based on search term
    productsToShow = products.filter(product =>
        product.name.toLowerCase().includes(searchTerm) ||
        product.description.toLowerCase().includes(searchTerm)
    );

    // Reset to the first page after searching
    currentPage = 0;

    // Display the search results
    displayProducts();
}

// Event listener for the search button
searchButton.addEventListener('click', () => {
    performSearch();
});

// Event listener for the Enter key in the search input field
searchInput.addEventListener('keyup', (event) => {
    if (event.key === 'Enter') {
        performSearch();
    }
});

// Function to open the modal with product details
function openModal(index) {
    const product = productsToShow[index];

    // Update modal content
    document.getElementById('popupProductImage').src = `product${index + 1}.jpg`;
    document.getElementById('popupProductName').textContent = product.name;
    document.getElementById('popupProductDescription').textContent = product.description;
    document.getElementById('popupProductPrice').textContent = product.price;
    document.getElementById('popupProductDosage').textContent = product.dosage || "Not specified";
    document.getElementById('popupProductAvailability').textContent = product.availability || "Not specified";

    
    const modal = document.getElementById('myModal');
    modal.style.display = 'block';

    
    const closeModalButton = document.getElementById('closeModal');
    closeModalButton.addEventListener('click', () => {
        modal.style.display = 'none';
    });

    
    window.addEventListener('click', (event) => {
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    });
}


applyFilters();