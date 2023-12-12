CREATE DATABASE Demo;
USE Demo;

CREATE TABLE Users (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    RegistrationDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    ContactNumber VARCHAR(15) DEFAULT '+994000000000',
    Age INT CHECK (Age > 18),
    Address VARCHAR(255)
);

INSERT INTO Users (Name, Surname, Email, Age, Address) VALUES
('Bob', 'Marley', 'bob@gmail.com', 25, 'New York'),
('Freddie', 'Mercury', 'freddie@example.com', 30, 'England'),
('Amy', 'Winehouse', 'amy@example.com', 22, 'California');

CREATE TABLE Categories (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    IsActive BOOLEAN
);

INSERT INTO Categories (Name, IsActive) VALUES
('Category1', true),
('Category2', false),
('Category3', true);

SELECT Name, Surname, Email FROM Users;

SELECT Name, IsActive FROM Categories;