CREATE DATABASE usersdb;

USE usersdb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(60) NOT NULL,
    last_login_time DATETIME,
    registration_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('active', 'blocked') NOT NULL
);

INSERT INTO Users (name, email, password, last_login_time, registration_time, status)
VALUES
('Alice Johnson', 'alice@example.com', 'password123', '2024-07-10 12:34:56', '2024-01-15 09:00:00', 'active'),
('Bob Smith', 'bob@example.com', 'securepass', '2024-07-12 14:20:00', '2024-02-20 10:30:00', 'blocked'),
('Charlie Brown', 'charlie@example.com', 'charliepwd', '2024-07-11 16:45:00', '2024-03-25 11:15:00', 'active'),
('David Wilson', 'david@example.com', 'davidpass', '2024-07-13 09:12:34', '2024-04-10 14:50:00', 'active'),
('Eve Davis', 'eve@example.com', 'evepassword', '2024-07-14 11:23:45', '2024-05-05 13:40:00', 'blocked'),
('Frank Miller', 'frank@example.com', 'frank1234', '2024-07-15 10:01:23', '2024-06-01 12:30:00', 'active');


ALTER TABLE users
MODIFY COLUMN registration_time DATETIME DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE users
MODIFY COLUMN password VARCHAR(60) NOT NULL;
