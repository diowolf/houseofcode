<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="resources/main.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
	<title>Programming Books</title>
</head>
<body>
	<header>
		<div class="wrapper">
			<div class="title">
				<h2>House of Code</h2>
			</div>
			<div class="shopping-cart">
				<a href="/houseofcode/cart" class="btn btn-info"> Shopping Cart (${shoppingCart.quantity})</a>
			</div>
		</div>
	</header>

  	<nav>
    	<ul>
    		<li><a href="/houseofcode">Home</a></li>
      		<li><a href="/houseofcode/products">Books</a></li>
      		<li><a href="/houseofcode/products/form">Add new book</a></li>
    	</ul>
  	</nav>
  	
  	<div class="pageBody">
    	<h1>Best place in the world to get books</h1>
    	<p>Come here and get the best books in the world!!! Quality here guaranteed!!!!!!</p>
  	</div>

</body>
</html>