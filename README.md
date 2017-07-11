# Jungle

A light-weight e-commerce application built with Rails 4.2.

## Features

Admins can sign in using basic HTTP authentication, then add/remove products and categories.
Users can register, log in, post/delete product reviews, and make purchases (test credit card only), receipts are emailed to the email used to register.
Users can add product to cart and checkout without logging in.
Users can view reviews without logging in, but will be prompted to log in when they try to post a review.

## Interface

![Front page](https://raw.githubusercontent.com/nombiezinja/jungle-rails/master/docs/front-page.png)
![Check out page](https://raw.githubusercontent.com/nombiezinja/jungle-rails/master/docs/checkout.png)
![Product review](https://raw.githubusercontent.com/nombiezinja/jungle-rails/master/docs/product-review.png)

## Setup

1. Clone into a directory
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios

Use any valide month and year in the future for expiry date, and any 3 numbers for CVC

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Rspec
* letter_opener
* letter_opener_web