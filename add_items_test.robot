*** Settings ***
Documentation  Tests to verify if items can be added to cart.

Library  SeleniumLibrary

Resource  resources.robot
Resource  system.robot
Resource  navigation.robot
Resource  pages/products-page.robot
Resource  pages/cart-page.robot

Suite Teardown  Run Keywords  Exit Test

*** Test Cases ***
TC1 Add two most expensive items to the cart
  Given Open Favourite e-shop
  And Navigate to smartphone category
  When Sort Items By Price Descending
  And Add Phone By Index To Cart   phone_index=1
  And Add Phone By Index To Cart    phone_index=2
  And Navigate to Cart
  Then Verify number of items in cart    number_of_phones=2

TC2 Add two most expensive items to the cart direct way
  Given Open Favourite e-shop with smartphone category
  When Sort Items By Price Descending
  And Add Phone By Index To Cart   phone_index=1
  And Add Phone By Index To Cart    phone_index=2
  And Navigate to Cart
  Then Verify number of items in cart    number_of_phones=2