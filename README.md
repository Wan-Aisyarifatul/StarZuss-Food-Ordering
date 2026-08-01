# STARZUSS — Food Ordering Web System

Group coursework project — website module (login, cart, checkout, admin panel).

> **Note on scope:** This was a group coursework assignment. My role was full ownership of the **website module** — building the login/registration system, shopping cart, checkout flow, and admin dashboard shown in this repository.

## Features (Website Module)
- User registration & login (`register_form.php`, `login_form.php`, session-based auth)
- Product listing (`products.php`) with food images
- Shopping cart (`cart.php`)
- Checkout flow (`checkout.php`)
- Admin dashboard for managing users and orders (`admin_dashboard.php`, `admin_page.php`, `admin_update.php`)
- MySQL-backed data storage for users and cart items

## Tech Stack
| Layer | Technology |
|---|---|
| Backend | PHP |
| Database | MySQL |
| Frontend | HTML, CSS, JavaScript |

## Repository Structure
```
├── php/            All PHP pages (auth, cart, checkout, admin, product listing)
├── database/        MySQL schema exports (cart_db.sql, user_db.sql)
├── css/             Stylesheet
├── js/              Client-side script
└── images/          Sample product images
```

> **Security note:** `config.php` database credentials are placeholder/local dev defaults (`root`, empty password). Replace with your own values before deploying — never commit real credentials.

## Author
Wan Aisyarifatul Nor Binti Wan Aziz
