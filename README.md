# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots

!["Home Page"](https://github.com/binduprakash/jungle-rails/blob/master/docs/home.png)
!["Product"](https://github.com/binduprakash/jungle-rails/blob/master/docs/product.png)
!["Review"](https://github.com/binduprakash/jungle-rails/blob/master/docs/reviews.png)
!["Checkout"](https://github.com/binduprakash/jungle-rails/blob/master/docs/checkout.png)
!["Order Confirmation"](https://github.com/binduprakash/jungle-rails/blob/master/docs/order_confirm.png)
!["Login"](https://github.com/binduprakash/jungle-rails/blob/master/docs/login.png)
!["Signup"](https://github.com/binduprakash/jungle-rails/blob/master/docs/signup.png)
!["Edit Category"](https://github.com/binduprakash/jungle-rails/blob/master/docs/edit_category.png)
!["Category"](https://github.com/binduprakash/jungle-rails/blob/master/docs/category.png)
!["Email"](https://github.com/binduprakash/jungle-rails/blob/master/docs/email.png)