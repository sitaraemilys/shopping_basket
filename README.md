# Introduction

A system for an online shopping basket.

## Features

* It is initialised with the product catalog, delivery charge rules, and offers (the format of how these are passed is up to you)
* It has an add method that takes the product code as a parameter
* It has a total method that returns the total cost of the basket, taking into account the delivery and offer rules

## Domain mapping

In order to make a system which was open to extension and easy to maintain,
I created the following classes:

* Product
* Products
* Basket
* Delivery Charges
* Special Offers

This means that if any factors changed within the separate classes, they could be easily updated, without breaking anything.

## Instructions

 Clone this repo:

 ```
 $ git clone git@github.com:sitypop/shopping_basket.git
 ```

 Change to shopping_basket directory, open irb and require the basket.rb file:

 ```
 $ cd shopping_basket
 $ irb
 2.2.3 :001 > require "./lib/basket.rb"
  => true
  ```

 Now we can create some products:

  ```
  2.2.1 :002 > socks = Product.new("Socks", "S01", 7.95)
   => #<Product:0x007fb832182d78 @name="Socks", @code="S01", @price=7.95>
  2.2.1 :003 > jeans = Product.new("Jeans", "J01", 32.95)
   => #<Product:0x007fb832159db0 @name="Jeans", @code="J01", @price=32.95>
  2.2.1 :004 > blouse = Product.new("Blouse", "B01", 24.95)
   => #<Product:0x007fb832149a50 @name="Blouse", @code="B01", @price=24.95>
   ```

 Let's add them to a products catalog:

 ```
 2.2.1 :005 > products = Products.new
  => #<Products:0x007fb83280d328 @catalog=[]>
 2.2.1 :006 > products.add(socks)
  => [#<Product:0x007fb832182d78 @name="Socks", @code="S01", @price=7.95>]
 2.2.1 :007 > products.add(blouse)
  => [#<Product:0x007fb832182d78 @name="Socks", @code="S01", @price=7.95>, #<Product:0x007fb832149a50 @name="Blouse", @code="B01", @price=24.95>]
 2.2.1 :008 > products.add(jeans)
  => [#<Product:0x007fb832182d78 @name="Socks", @code="S01", @price=7.95>, #<Product:0x007fb832149a50 @name="Blouse", @code="B01", @price=24.95>, #<Product:0x007fb832159db0 @name="Jeans", @code="J01", @price=32.95>]
  ```

 Now we can create a basket with the products catalog:
 ```
 2.2.1 :009 > basket = Basket.new(products)
  => #<Basket:0x007fb8320a80d8 @product_catalog=[#<Product:0x007fb832182d78 @name="Socks", @code="S01", @price=7.95>, #<Product:0x007fb832149a50 @name="Blouse", @code="B01", @price=24.95>, #<Product:0x007fb832159db0 @name="Jeans", @code="J01", @price=32.95>], @order_log=[], @sum=0, @delivery_charges=#<DeliveryCharges:0x007fb8320a8060>, @special_offers=#<SpecialOffers:0x007fb8320a8038>>
  ```

  I want to add 2 pairs of jeans to my basket and checkout:

  ```
  2.2.1 :010 > basket.add("J01")
 => [#<Product:0x007fb832182d78 @name="Socks", @code="S01", @price=7.95>, #<Product:0x007fb832149a50 @name="Blouse", @code="B01", @price=24.95>, #<Product:0x007fb832159db0 @name="Jeans", @code="J01", @price=32.95>]
2.2.1 :011 > basket.add("J01")
 => [#<Product:0x007fb832182d78 @name="Socks", @code="S01", @price=7.95>, #<Product:0x007fb832149a50 @name="Blouse", @code="B01", @price=24.95>, #<Product:0x007fb832159db0 @name="Jeans", @code="J01", @price=32.95>]
 2.2.1 :012 > basket.total
 => "£54.38"
  ```

Wow, what a bargain!

## Testing

  In your terminal, type `$ rspec under `shopping_basket` directory and it will run all the tests, including unit and feature in spec files.


## Tools

  * Ruby
  * RSpec


## Author

  Sity Shah
