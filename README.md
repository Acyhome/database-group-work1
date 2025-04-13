# database-group-work1
# 📚 Bookstore Database Project

[![MySQL](https://img.shields.io/badge/MySQL-8.0+-blue.svg)](https://www.mysql.com/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

## 📖 Overview

A comprehensive MySQL database schema designed for a modern bookstore management system. This project provides a robust database structure to manage books, authors, customers, orders, and more, with built-in user role management for secure access control.

## 🏗️ Database Structure

### Core Tables
- **Books**: Manages book inventory with details like title, genre, price
- **Authors**: Stores author information and their biographical data
- **Publishers**: Tracks publishing houses
- **Customers**: Maintains customer profiles and contact information
- **Orders**: Handles customer purchases and order processing

### Supporting Tables
- **Languages**: Book language options
- **Addresses**: Customer shipping and billing addresses
- **Order Status**: Tracks order fulfillment stages
- **Shipping Methods**: Available shipping options

## 🔐 User Roles

| Role | Access Level | Description |
|------|--------------|-------------|
| `bookstore_admin` | Full Access | Complete database management privileges |
| `bookstore_staff` | Limited | Inventory and order management |
| `customer_service` | Restricted | Customer data and order status management |
| `report_user` | Read-only | Data analysis and reporting access |



## 🚀 Getting Started

### Prerequisites
- MySQL 8.0 or higher
- MySQL Workbench (recommended for visualization)

### Installation

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/bookstore-database.git
   ```

2. Connect to MySQL
   ```bash
   mysql -u root -p
   ```

3. Run the schema script
   ```bash
   source bookstore_schema.sql
   ```

## 🛠️ Database Features

- **Normalized Structure**: Follows database normalization principles
- **Referential Integrity**: Enforced through foreign key constraints
- **Role-Based Access**: Predefined user roles with appropriate permissions
- **Order Tracking**: Complete order lifecycle management
- **Address Management**: Multiple address support per customer

## 🔍 Usage Examples

### Basic Queries

```sql
-- Get all books by an author
SELECT b.title, b.genre, b.price
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.first_name = 'Author_Name';

-- Get customer order history
SELECT co.order_id, co.order_date, os.status_name
FROM cust_order co
JOIN order_status os ON co.order_status_id = os.order_status_id
WHERE co.customer_id = 1;
```

## 📝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Support

For support and queries, please open an issue in the repository.
