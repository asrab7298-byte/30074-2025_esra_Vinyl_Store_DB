# 30074-2025_esra_Vinyl_Store_DB
# Vinyl Store Database Management System

## Project Overview

Vinyl Store Database Management System is an Oracle database project developed for the DPR400210 - Database Programming course.

The system manages a vinyl store business by organizing customers, artists, vinyl records, orders, payments, and database activities using SQL and PL/SQL.

---

## Problem Statement

Many vinyl stores manage their products, customers, and orders manually, which can lead to data duplication, inaccurate records, and difficulty tracking transactions.

This project provides a database solution to store, manage, and analyze vinyl store operations efficiently.

---

## Objectives

- Manage customer information.
- Store artist and vinyl record details.
- Handle customer orders and payments.
- Maintain data integrity using constraints.
- Apply business rules using triggers.
- Track database activities using auditing.
- Implement PL/SQL programming features.

---

## Database Entities

The system contains the following tables:

### Customer
Stores customer information.

### Artist
Stores artist details.

### Vinyl_Record
Stores vinyl product information and links records with artists.

### Orders
Stores customer orders.

### Order_Item
Stores order details.

### Payment
Stores payment transactions.

### Audit_Log
Stores database activity history.

### Public_Holidays
Stores official holidays for security rules.

---

## Database Design

The database was designed using normalization principles up to Third Normal Form (3NF).

Main relationships:

- One Customer can have many Orders.
- One Artist can have many Vinyl Records.
- One Order can contain many Order Items.
- One Order has payment information.

---

## SQL Implementation

Implemented features:

- Table creation.
- Primary keys.
- Foreign keys.
- NOT NULL constraints.
- UNIQUE constraints.
- CHECK constraints.
- Data insertion.
- SQL queries.

---

## PL/SQL Implementation

The project includes:

### Procedures
Parameterized procedures for retrieving order information.

### Functions
Functions for calculating order totals.

### Packages
Package containing related procedures and functions.

### Cursors
Used to process multiple records.

### Exception Handling
Handling missing data and runtime errors.

---

## Trigger Implementation

The project includes:

### Audit Trigger

Tracks:

- INSERT operations.
- UPDATE operations.
- DELETE operations.

### Compound Trigger

Tracks vinyl price changes.

### Security Trigger

Prevents database modifications during:

- Weekdays.
- Public holidays.

---

## Audit System

The Audit system records:

- Table name.
- Action type.
- Date and time.
- Database user.

---

## Project Structure
