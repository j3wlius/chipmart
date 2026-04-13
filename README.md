# Chipmart E-Commerce Store (Learning Project)

## Overview

This is a full-stack e-commerce application built with Ruby on Rails as a learning project.

The goal is to deeply understand:

* Rails MVC architecture
* Database design & associations
* Real-world business logic (cart → order → checkout)
* Authentication & authorization
* Scalable app structure


---

## Project Goals

By the end of this project, I should be able to:

* Design relational data models confidently
* Build full CRUD flows in Rails
* Handle sessions and state (cart system)
* Implement authentication and authorization
* Manage multi-step workflows (checkout)
* Structure a production-ready Rails app

---

## Tech Stack

* Ruby on Rails (Full Stack)
* PostgreSQL
* ERB (views)
* Tailwind
* Devise (authentication)
* Active Storage (file uploads)
* Payment processor integration --- Stripe or Pesapal or any alternative I figure out with time.

---

## Development Roadmap

### ✅ Milestone 0: Project Setup (DONE)

* [x] Initialize Rails app
* [x] Setup PostgreSQL
* [x] Initial project structure ready

---

## Milestone 1: Product Catalog (CORE FOUNDATION)

**Goal:** Users can browse products

### Tasks

* [ ] Generate Category model

* [ ] Generate Product model

* [ ] Setup associations:

  * Category has_many Products
  * Product belongs_to Category

* [ ] Add validations:

  * Product: name, price, stock, description
  * Category: name

* [ ] Create ProductsController:

  * index
  * show

* [ ] Setup routes:

  * root → products#index
  * products#index
  * products#show

* [ ] Build views:

  * product listing page
  * product detail page

* [ ] Seed sample data (10+ products)

### Success Criteria

* Users can view products
* Each product has valid data
* Relationships work correctly

---

## 🛠️ Milestone 2: Admin Product Management

**Goal:** Admin can manage products and categories

### Tasks

* [ ] Create Admin namespace

* [ ] Admin::ProductsController (full CRUD)

* [ ] Admin::CategoriesController (full CRUD)

* [ ] Build forms:

  * new/edit product
  * new/edit category

* [ ] Reuse form partials

### Success Criteria

* Admin can create/edit/delete products
* Categories are assignable to products

---

## Milestone 3: Authentication & Roles

**Goal:** Introduce users and restrict admin access

### Tasks

* [ ] Generate User model

* [ ] Add fields:

  * email
  * password_digest
  * role

* [ ] Implement authentication (Devise)

* [ ] Add roles:

  * admin
  * customer

* [ ] Protect admin routes

### Success Criteria

* Users can sign up and log in
* Only admins access admin panel

---

## Milestone 4: Cart System (SESSION-BASED)

**Goal:** Users can add products to a cart

### Tasks

* [ ] Implement session-based cart:

  * session[:cart]

* [ ] Cart actions:

  * add item
  * remove item
  * update quantity

* [ ] Create CartController:

  * show
  * add_item
  * remove_item
  * update_item

* [ ] Build cart page:

  * list items
  * show totals

### Success Criteria

* Cart persists per session
* Totals calculate correctly

---

## Milestone 5: Orders System

**Goal:** Convert cart into an order

### Tasks

* [ ] Generate Order model

* [ ] Generate OrderItem model

* [ ] Setup associations:

  * User has_many Orders
  * Order has_many OrderItems
  * OrderItem belongs_to Product

* [ ] Add fields:

  * Order: status, total_amount, address
  * OrderItem: quantity, unit_price, subtotal

* [ ] Implement checkout flow:

  * create order
  * move cart items → order items
  * clear session cart

### Success Criteria

* Orders are created correctly
* Prices are stored at purchase time

---

## Milestone 6: Checkout Flow

**Goal:** Complete purchase process

### Tasks

* [ ] Create checkout page

* [ ] Capture:

  * shipping address
  * phone number

* [ ] Add order confirmation page

* [ ] Add order statuses:

  * pending
  * paid
  * shipped
  * cancelled

### Success Criteria

* User can complete an order end-to-end

---

## Milestone 7: Payments (SIMULATED → REAL)

**Goal:** Introduce payment logic

### Phase 1 (Fake Payment)

* [ ] Add payment_method
* [ ] Add payment_status

### Phase 2 (Optional)

* [ ] Integrate Stripe
* [ ] Handle webhooks

### Success Criteria

* Orders track payment status correctly

---

## Milestone 8: Polish & Enhancements

**Goal:** Improve UX and realism

### Features

* [ ] Product search
* [ ] Category filtering
* [ ] Pagination
* [ ] Image uploads (Active Storage)
* [ ] Order history (user)
* [ ] Admin order management
* [ ] Email confirmations
* [ ] Stock updates after purchase

### Success Criteria

* App feels like a real product

---

---

## Development Philosophy

* Build in **small vertical slices**
* Make it work → then clean → then improve
* Avoid over-engineering early
* Focus on understanding, not speed

---

## Current Focus

 **Milestone 1: Product Catalog**

---

## 🏁 Definition of Done (v1)

### Customer Side

* Browse products
* View product details
* Add to cart
* Place order
* View order history

### Admin Side

* Manage products
* Manage categories
* View orders
* Update order status

---

## Notes

This README is a living roadmap and will evolve as the project grows.
