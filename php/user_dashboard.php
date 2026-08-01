<?php

@include 'configure.php';

// Function to get all products from the database
function getAllProducts()
{
   global $conn;
   $products = array();

   $select = mysqli_query($conn, "SELECT * FROM products");
   while ($row = mysqli_fetch_assoc($select)) {
      $products[] = $row;
   }

   return $products;
}

// Function to search for cakes based on product name
function searchCakes($keyword)
{
   global $conn;
   $products = array();

   $search_query = "SELECT * FROM products WHERE name LIKE '%$keyword%'";
   $search_result = mysqli_query($conn, $search_query);
   while ($row = mysqli_fetch_assoc($search_result)) {
      $products[] = $row;
   }

   return $products;
}

$products = array();
$search_keyword = '';

if (isset($_POST['search'])) {
   $search_keyword = $_POST['search_keyword'];
   $products = searchCakes($search_keyword);
} else {
   $products = getAllProducts();
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Starzuss - List of Menu</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/styles.css">

   <style>
      .centered-heading {
         text-align: center;
         margin: 20px 0;
      }
   </style>
</head>

<body>

   <div class="header">
      <div class="top-left">
         <h1>Starzuss</h1>
      </div>
   </div>

   <div class="container">
      <h2 class="centered-heading">List of Menu</h2>

      <div class="search-form-container">
         <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
            <input type="text" placeholder="Search cakes..." name="search_keyword" class="box" value="<?php echo $search_keyword; ?>">
            <input type="submit" class="btn" name="search" value="Search">
         </form>
      </div>

      <div class="product-display">
         <table class="product-display-table">
            <thead>
               <tr>
                  <th>Product Image</th>
                  <th>Product Name</th>
                  <th>Product Price</th>
               </tr>
            </thead>
            <?php foreach ($products as $product) { ?>
               <tr>
                  <td><img src="uploaded_img/<?php echo $product['image']; ?>" height="100" alt=""></td>
                  <td><?php echo $product['name']; ?></td>
                  <td>RM<?php echo $product['price']; ?></td>
               </tr>
            <?php } ?>
         </table>
      </div>

   </div>

</body>

</html>
