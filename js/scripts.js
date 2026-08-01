// script.js
document.addEventListener('DOMContentLoaded', function () {
    const productList = document.getElementById('productList');

    // Sample products data (you can replace this with actual data from the server)
    const products = [
        {
            name: 'Choco Kisses Cakes',
            description: 'Description of Product 1',
            imageUrl: 'food-9.jpg',
        },
        {
            name: 'Fraisier Cakes',
            description: 'Description of Product 2',
            imageUrl: 'product2.jpg',
        },

        // Add more products as needed
    ];

    // Function to create product items and append them to the product list
    function createProductItem(product) {
        const productItem = document.createElement('li');
        productItem.classList.add('product-item');

        const productImage = document.createElement('img');
        productImage.src = product.imageUrl;
        productImage.alt = product.name;

        const productName = document.createElement('h3');
        productName.textContent = product.name;

        const productDescription = document.createElement('p');
        productDescription.textContent = product.description;

        productItem.appendChild(productImage);
        productItem.appendChild(productName);
        productItem.appendChild(productDescription);

        productList.appendChild(productItem);
    }

    // Populate the product list with products from the data
    products.forEach(createProductItem);
});